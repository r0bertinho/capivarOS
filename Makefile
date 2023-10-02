# Defining the license
VERSION = 1.0
PATCHLEVEL = 0
NAME = CapivarOS


# Defining the kernel files
kernel_source_files := $(shell find src/impl/kernel -name '*.c')
kernel_object_files := $(patsubst src/impl/kernel/%.c, build/kernel/%.o, $(kernel_source_file))

# Defining C files
x86_64_c_source_files := $(shell find src/impl/x86_64 -name '*.c')
x86_64_c_object_files := $(patsubst src/impl/x86_64/%.c, build/x86_64/%.o, $(x86_64_c_source_files))

# Defining C++ files
x86_64_cpp_source_files := $(shell find src/impl/x86_64 -name '*.cpp')
x86_64_cpp_object_files := $(patsubst src/impl/x86_64/%.cpp, build/x86_64/%.o, $(x86_64_cpp_source_files))

# Defining Rust files
x86_64_rust_source_files := $(shell find src/impl/x86_64 -name '*.rs')
x86_64_rust_object_files := $(patsubst src/impl/x86_64/%.rs, build/x86_64/%.o, $(x86_64_rust_source_files))

# Defining ASM files
x86_64_asm_source_files := $(shell find src/impl/x86_64 -name '*.asm')
x86_64_asm_object_files := $(patsubst src/impl/x86_64/%.asm, build/x86_64/%.o, $(x86_64_asm_source_files))

# Defining all object files
x86_64_object_files := $(x86_64_c_object_files) $(x86_64_asm_object_files)

# Ignoring README.md on all folders
IGNORED_FILES := README.md


# Building kernel objects
$(kernel_object_files): build/kernel/%.o: src/impl/kernel/%.c
	mkdir -p $(dir $@) && \
	x86_64-elf-gcc -c -I src/intf -ffreestanding $(patsubst build/kernel/%.o, src/impl/kernel/%.c, $@) -o$@

# Building C objects
$(x86_64_c_object_files): build/x86_64/%.o: src/impl/x86_64/%.c			
	mkdir -p $(dir $@) && \
	x86_64-elf-gcc -c -I src/intf -ffreestanding $(patsubst build/x86_64/%.o, src/impl/x86_64/%.c, $@) -o$@

# Building C++ objects
$(x86_64_cpp_object_files): build/x86_64/%.o: src/impl/x86_64/%.cpp
	mkdir -p $(dir $@) && \
	x86_64-elf-g++ -c -I src/intf -ffreestanding $(patsubst build/x86_64/%.o, src/impl/x86_64/%.cpp, $@) -o$@

# Building Rust objects
$(x86_64_rust_object_files): build/x86_64/%.o: src/impl/x86_64/%.rs
	mkdir -p $(dir $@) && \
	x86_64-elf-rs $(patsubst build/x86_64/%.o, src/impl/x86_64/%.rs, $@)

# Building ASM objects
$(x86_64_asm_object_files): build/x86_64/%.o: src/impl/x86_64/%.asm
	mkdir -p $(dir $@) && \
	nasm -f elf64 $(patsubst build/x86_64/%.o, src/impl/x86_64/%.asm, $@) -o $@


# Finalizing building
.PHONY: build-x86_64
build-x86_64: $(kernel_object_files) $(x86_64_object_files)
	mkdir -p dist/x86_64 && \
	x86_64-elf-ld -n -o dist/x86_64/kernel.bin -T targets/x86_64/kernel.ld $(kernel_object_files) $(x86_64_object_files) && \
	cp dist/x86_64/kernel.bin targets/x86_64/iso/boot/kernel.bin && \
	grub-mkrescue /usr/lib/grub/i386-pc -o dist/x86_64/kernel.iso targets/x86_64/iso
