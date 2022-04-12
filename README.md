# Fast Strings

Extremely straight-forward string management system for Flutter.

## Features

Load a **.yaml** file from your Flutter asset directory and use the `Strings` class to access your data.

## Getting started

Add this package to your dependencies.

`fast_strings: ^1.0.0`

Initialize this package in your main.dart:

```dart
void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    // Put your file path in here. Do not forget to include it into your pubspec.
    await Strings.initialize('assets/strings_en.yaml');
    runApp(App());
}
```

## Usage
 
.yaml file:

 ```yaml
 welcome:
    hello: Hello, welcome to my app!
    description: This app is awesome.
    presentation:
        - It features a lot of cool stuff
        - Is epic over all
 ```

Flutter app:

```dart
Text(Strings.data['welcome']['hello'])

Text(Strings.data['welcome']['presentation'][index])
```

## Additional information

Really simple and easy to use. Next update will include a way to provide $variables.