## Package UI

To have app's UI related packages and code,

- Create **ui** package into the *packages* folder:

```bash
cd packages
flutter create --template=package ui
```

- Edit **pubspec.yaml** of the ui package:
- Pay attention to the name which is the app name instead of ui. This helps not only registering app but also forcing to use relative path in Dart classes in this package.

```yaml
name: template
description: UI for fl_template
publish_to: "none" # Remove this line if you wish to publish to pub.dev

version: 0.1.0

environment:
  sdk: ">=2.15.0 <3.0.0"

dependencies:
  flutter:
    sdk: flutter

  adapter:
    path: ../adapter
  animations: ^2.0.2
  cached_network_image: ^3.2.0
  cupertino_icons: ^1.0.4
  device_info_plus: ^3.2.0
  email_validator: ^2.0.1
  equatable: ^2.0.3
  fl_chart: ^0.40.6
  flutter_dotenv: ^5.0.2
  flutter_hooks: ^0.18.1
  flutter_secure_storage: ^5.0.2
  gap: ^2.0.0
  go_router: ^2.5.7
  golden_toolkit: ^0.12.0
  hooks_riverpod: ^1.0.3
  intl: ^0.17.0
  logger: ^1.1.0
  model:
    path: ../model
  package_info_plus: ^1.2.1
  shared_preferences: ^2.0.11
  theme:
    path: ../theme
  url_launcher: ^6.0.17

dev_dependencies:
  flutter_test:
    sdk: flutter

  build_runner: ^2.1.7
  flutter_launcher_icons: ^0.9.2
  flutter_lints: ^1.0.4
  mockito: ^5.0.16

# The following section is specific to Flutter.
flutter:
  uses-material-design: true
  assets:
    - google_fonts/
```

- Start an emaulator instance and app from **packages/ui/** with flutter run command.

```bash
flutter emulators --launch apple_ios_simulator
flutter run
``` 

- So far we've laid out app's folder structure with commonly used packages with **melos**. Thus, we still expect to see this default app scaffolded - stay tuned for wiring UI and the adapters and more!
![default app ui](../screenshots/05_package_ui_default.png)
