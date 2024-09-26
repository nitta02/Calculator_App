## Flutter Calculator App
This is a simple Calculator App built with Flutter. The app features basic arithmetic operations with a clean and responsive user interface.

### Project Structure
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


### Code Explanation
The app's main functionality revolves around taking user input, parsing the expression, and evaluating it using the math_expressions package. For example, here's how the calculation logic works:
void equalPress() {
  String finalUserInput = userInput.replaceAll('x', '*');
  Parser p = Parser();
  Expression ex = p.parse(finalUserInput);
  ContextModel contextModel = ContextModel();
  double eval = ex.evaluate(EvaluationType.REAL, contextModel);
  answer = eval.toString();
}
