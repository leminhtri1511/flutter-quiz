# Quiz App

This is a simple quiz app built with Flutter. The app allows users to answer multiple-choice questions and displays the next question after each answer.

## Features

- Displays a question along with a set of answer choices.
- The question and answer choices are provided by the `questions.dart` data file.
- The app uses the `GoogleFonts.lato` font for the question text.
- The answer choices are displayed using `AnswerButton` widgets.
- The answer buttons are dynamically generated based on the current question.
- Tapping on an answer button triggers the `answerQuestion` method, which updates the current question index.
- The app shuffles the answer choices for each question.

## Getting Started

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/quiz_app.git
   ```

2. Change to the project directory:

   ```bash
   cd quiz_app
   ```

3. Install dependencies:

   ```bash
   flutter pub get
   ```

4. Run the app:

   ```bash
   flutter run
   ```

## Dependencies

- `flutter/material.dart`: The Flutter framework.
- `quiz_app/answer_button.dart`: A custom widget for answer buttons.
- `quiz_app/data/questions.dart`: Data file containing the quiz questions.
- `google_fonts/google_fonts.dart`: A package for using custom fonts in Flutter.

## Contributing

Contributions to the Quiz App are welcome and encouraged! Here's how you can contribute:

1. Fork the project.
2. Create your feature branch (`git checkout -b feature/YourFeature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/YourFeature`).
5. Open a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
