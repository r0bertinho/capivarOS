// Include necessary libraries
#include <stdio.h>
#include <gtk/gtk.h>

// Define the main function
int main(int argc, char* argv[]) {
    // Initialize the GTK library
    gtk_init(&argc, &argv);

    // Create a GTK window
    GtkWidget* window = gtk_window_new(GTK_WINDOW_TOPLEVEL);

    // Set the window title
    gtk_window_set_title(GTK_WINDOW(window), "Minimalist GUI - C");

    // Set the window size
    gtk_widget_set_size_request(window, 400, 300);

    // Connect the "destroy" signal to the main_quit function
    g_signal_connect(window, "destroy", G_CALLBACK(gtk_main_quit), NULL);

    // Show the window
    gtk_widget_show_all(window);

    // Run the GTK main loop
    gtk_main();

    return 0;
}
