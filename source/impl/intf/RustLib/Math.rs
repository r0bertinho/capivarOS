// For clarifying common operations to be used

pub fn add(a: i32, b: i32) -> i32 {
    a + b
}

pub fn sub(a: i32, b: i32) -> i32 {
    a - b
}

pub fn mul(a: i32, b: i32) -> i32 {
    a * b
}

pub fn div(a: i32, b: i32) -> i32 {
    a / b
}

pub fn mod_(a: i32, b: i32) -> i32 {
    a % b
}

pub fn pow(a: i32, b: i32) -> i32 {
    a.pow(b)
}

pub fn sqrt(a: i32) -> i32 {
    (a as f32).sqrt() as i32
}

pub fn abs(a: i32) -> i32 {
    a.abs()
}

pub fn sign(a: i32) -> i32 {
    a.signum()
}

pub fn max(a: i32, b: i32) -> i32 {
    a.max(b)
}

pub fn min(a: i32, b: i32) -> i32 {
    a.min(b)
}

pub fn clamp(a: i32, min: i32, max: i32) -> i32 {
    a.clamp(min, max)
}

pub fn powf(a: f32, b: f32) -> f32 {
    a.powf(b)
}

pub fn sqrtf(a: f32) -> f32 {
    (a as f64).sqrt() as f32
}

pub fn absf(a: f32) -> f32 {
    a.abs()
}

pub fn signf(a: f32) -> f32 {
    a.signum()
}

pub fn maxf(a: f32, b: f32) -> f32 {
    a.max(b)
}

pub fn minf(a: f32, b: f32) -> f32 {
    a.min(b)
}

pub fn clampf(a: f32, min: f32, max: f32) -> f32 {
    a.clamp(min, max)
}

pub fn powi(a: i32, b: i32) -> i32 {
    a.powi(b)
}

pub fn sqrti(a: i32) -> i32 {
    (a as f32).sqrt() as i32
}

pub fn absi(a: i32) -> i32 {
    a.abs()
}

pub fn signi(a: i32) -> i32 {
    a.signum()
}

pub fn maxi(a: i32, b: i32) -> i32 {
    a.max(b)
}

pub fn mini(a: i32, b: i32) -> i32 {
    a.min(b)
}

pub fn clampi(a: i32, min: i32, max: i32) -> i32 {
    a.clamp(min, max)
}

pub fn powui(a: u32, b: u32) -> u32 {
    a.pow(b)
}

pub fn sqrtui(a: u32) -> u32 {
    (a as f32).sqrt() as u32
}

pub fn absui(a: u32) -> u32 {
    a.abs()
}

pub fn signui(a: u32) -> u32 {
    a.signum()
}

pub fn maxui(a: u32, b: u32) -> u32 {
    a.max(b)
}

pub fn minui(a: u32, b: u32) -> u32 {
    a.min(b)
}

pub fn clampui(a: u32, min: u32, max: u32) -> u32 {
    a.clamp(min, max)
}

pub fn powf32(a: f32, b: f32) -> f32 {
    a.powf(b)
}

pub fn sqrtf32(a: f32) -> f32 {
    (a as f64).sqrt() as f32
}