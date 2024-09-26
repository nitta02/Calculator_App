Flutter Calculator App

This is a simple Calculator App built with Flutter. The app features basic arithmetic operations with a clean and responsive user interface.

Table of Contents

Features
Project Structure
Getting Started
Prerequisites
Installation
Usage
Code Explanation
Built With
Contributing
License
Features
Supports:
Addition (+)
Subtraction (-)
Multiplication (x)
Division (/)
Modulo (%)
Responsive UI
Simple, clean design

Project Structure
flutter_calculator_app/
│
├── lib/
│   ├── screens/
│   │   ├── main_screen.dart          # The main calculator screen UI
│   │   └── splash_screen.dart        # Splash screen before calculator opens
│   │
│   ├── utils/
│   │   └── design.dart               # Design-related configurations like colors, themes
│   │
│   ├── widgets/
│   │   └── buttons.dart              # Custom reusable buttons for the calculator
│   │
│   └── main.dart                     # Main entry point for the app
│
├── assets/
│   └── fonts/                        # Font files if any
│
├── pubspec.yaml                      # Project dependencies and assets
├── README.md                         # This readme file
└── .gitignore                        # Files and directories to ignore in git


Folder Details

lib/screens/: Contains the primary app screens like the calculator screen and splash screen.
lib/utils/: Contains utility files, such as design configurations (e.g., colors, fonts, etc.).
lib/widgets/: Contains custom widgets, like calculator buttons, which can be reused throughout the app.
Getting Started
Prerequisites
Ensure that you have the following installed:

Flutter SDK
A code editor (e.g., Visual Studio Code or Android Studio)
A physical device or an emulator to run the app

Installation


Here’s a detailed and proper project structure for your calculator app with the utils, screens, and widgets folders. I'll also provide a corresponding README.md structure to guide users.

README.md
Flutter Calculator App
This is a simple Calculator App built with Flutter. The app features basic arithmetic operations with a clean and responsive user interface.

Table of Contents
Features
Project Structure
Getting Started
Prerequisites
Installation
Usage
Code Explanation
Built With
Contributing
License
Features
Supports:
Addition (+)
Subtraction (-)
Multiplication (x)
Division (/)
Modulo (%)
Responsive UI
Simple, clean design
Project Structure
bash
Copy code
flutter_calculator_app/
│
├── lib/
│   ├── screens/
│   │   ├── main_screen.dart          # The main calculator screen UI
│   │   └── splash_screen.dart        # Splash screen before calculator opens
│   │
│   ├── utils/
│   │   └── design.dart               # Design-related configurations like colors, themes
│   │
│   ├── widgets/
│   │   └── buttons.dart              # Custom reusable buttons for the calculator
│   │
│   └── main.dart                     # Main entry point for the app
│
├── assets/
│   └── fonts/                        # Font files if any
│
├── pubspec.yaml                      # Project dependencies and assets
├── README.md                         # This readme file
└── .gitignore                        # Files and directories to ignore in git


Usage
Press the number buttons to input values.
Use the arithmetic operator buttons (+, -, x, /, %) to build mathematical expressions.
Press the = button to compute the result.

Code Explanation
The app's main functionality revolves around taking user input, parsing the expression, and evaluating it using the math_expressions package. For example, here's how the calculation logic works:

void equalPress() {
  String finalUserInput = userInput.replaceAll('x', '*');
  Parser p = Parser();
  Expression ex = p.parse(finalUserInput);
  ContextModel contextModel = ContextModel();
  double eval = ex.evaluate(EvaluationType.REAL, contextModel);
  answer = eval.toString();
}

Key Files:
main.dart: The entry point of the app.
screens/main_screen.dart: Contains the layout and logic for the calculator screen.
widgets/buttons.dart: Defines reusable button widgets used in the calculator UI.
utils/design.dart: Defines constants for colors and other design-related properties.
Built With
Flutter - A UI toolkit for building natively compiled applications
Dart - Programming language
math_expressions - A package for evaluating mathematical expressions
Contributing
If you'd like to contribute to this project:

Fork the project.
Create a new branch (git checkout -b feature-branch).
Make your changes.
Push to the branch (git push origin feature-branch).
Open a pull request.
License
This project is licensed under the MIT License. See the LICENSE file for details.

