## Google Fonts

Assume that you already have **google_fonts** package as a dependency of the theme package. Then,

```yaml
dependencies:
  flutter:
    sdk: flutter

  google_fonts: ^3.0.1
```

- Create **google_fonts** folder into the theme package folder.

- Download the the fonts you'd like to use from the google fonts site, extract them and place the ttf files into the **google_fonts** folder.
- Define the assets as this to the theme's **pubspec.yaml**:

```yaml
flutter:
  uses-material-design: true
  assets:
    - google_fonts/
```

- Code the use of **google_fonts** like this Dart code in the template.theme.dart file:
  
```dart
// text styles
const textStyleFontPkg = TextStyle(package: 'theme');

final TextStyle defaultTextStyle = GoogleFonts.nunitoSans
  color: textColor,
  fontSize: 14,
  fontWeight: FontWeight.normal,
);
```
*Nunito Sans font package in the example above*

- Register the fonts (refer to *utils/register_fonts.dart*)

```dart
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

void registerFonts() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
}
```

- Call the registerFonts() from the main:
  
```dart
Future main({String? env = 'qa'}) async {
  WidgetsFlutterBinding.ensureInitialized();
  registerFonts();
  await initializeConfiguration(env);

  runApp(const ProviderScope(child: TemplateApp()));
}
```
