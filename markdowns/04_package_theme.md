## Package Theme

To have app's theme related packages and code,

- Create **theme** package into the *packages* folder:

```bash
cd packages
flutter create --template=package theme
```

- Edit **pubspec.yaml** of the theme package:

```yaml
name: theme
description: Theme for fl_template
publish_to: "none" # Remove this line if you wish to publish to pub.dev

version: 0.1.0

environment:
  sdk: ">=2.15.0 <3.0.0"

dependencies:
  flutter:
    sdk: flutter

  google_fonts: ^2.1.1

dev_dependencies:
  flutter_test:
    sdk: flutter

  flutter_lints: ^1.0.4

# The following section is specific to Flutter.
flutter:
  uses-material-design: true
  assets:
    - google_fonts/
```
