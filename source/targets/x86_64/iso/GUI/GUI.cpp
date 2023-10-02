#include <QApplication>
#include <QWidget>
#include <QLabel>
#include <QPushButton>
#include <QVBoxLayout>

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);

    // Create the main window
    QWidget mainWindow;
    mainWindow.setWindowTitle("Minimalist GUI");
    mainWindow.setGeometry(100, 100, 400, 200);

    // Create a layout for the main window
    QVBoxLayout *layout = new QVBoxLayout(&mainWindow);

    // Add a label
    QLabel *label = new QLabel("Hello, Minimalist GUI!");
    layout->addWidget(label);

    // Add a button
    QPushButton *button = new QPushButton("Click me");
    layout->addWidget(button);

    // Connect button click event to a slot (function)
    QObject::connect(button, &QPushButton::clicked, [&]() {
        label->setText("Button Clicked!");
    });

    // Show the main window
    mainWindow.show();

    // Run the application
    return app.exec();
}
