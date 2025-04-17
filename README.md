<<<<<<< HEAD
# drawing_board

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
=======
🧩 Drawing Board App
A Flutter application that allows users to draw shapes (Circle, Square, Rectangle) and interactively replace them by tapping — each shape remembers its history and replaces itself with earlier shapes in the insertion queue.

✨ Features
✅ Add shapes to the drawing board via buttons

✅ Tap any shape to replace it with a previous one from the insertion history

✅ Shape is removed when its history is exhausted

✅ Uses Flutter's native StatefulWidget — no third-party state management

✅ Clean architecture with separate files for models, screens, and widgets

✅ Latest Flutter version compatible (3.19+)

📁 Project Structure
bash
Copy code
lib/
├── main.dart                   # Entry point
├── models/
│   └── shape.dart              # Shape model and enum
├── screens/
│   └── drawing_board_screen.dart  # Main screen with board logic
├── widgets/
│   ├── shape_button.dart       # Shape button widget
│   └── shape_widget.dart       # Shape display widget
🧱 Architectural Choices
✅ Componentization
The UI is modular:

ShapeWidget → renders a specific shape

ShapeButton → renders a button based on shape type

✅ Stateless vs Stateful
StatefulWidget is used only where necessary (DrawingBoardScreen)

Reusable parts are kept Stateless

✅ Shape Replacement Logic
Each shape stores:

insertionIndex: the index in the global shape history

tapCount: number of times it was tapped Logic ensures the shape walks backward in history until no more options are left, then deletes itself.

🧩 How to Run the Application
Install Flutter
Follow the official guide: Flutter install

Clone the repository

bash
Copy code
git clone <your-repo-url>
cd drawing_board_app
Run the app

bash
Copy code
flutter pub get
flutter run
✅ You’re done! The app should load with three shape buttons and an interactive drawing board.

📦 Third-Party Libraries
🚫 None used. The app uses pure Flutter, no Provider, GetX, or state libraries — keeping things minimal and readable.
>>>>>>> dead90b75633fb641e4292c9b23a3545b3862117
