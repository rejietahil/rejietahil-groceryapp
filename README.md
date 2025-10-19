# rejietahil-groceryapp

# My Grocery App

A small Flutter app demonstrating a shop (school supplies), login/registration flow, and a simple cart using Provider.

## Prerequisites
- Flutter SDK (stable) installed and on PATH  
  Run: `flutter doctor`
- For Android builds: Android Studio + Android SDK
- For Windows desktop: Visual Studio with "Desktop development with C++"
- Chrome for Web runs (or an emulator/device)

## Dependencies
Add the package dependencies to `pubspec.yaml`:
```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0
```

## Assets
This project expects product images in `lib/Assets/` (e.g. `p1.jpg` … `p19.jpg`). Ensure `pubspec.yaml` lists the folder:
```yaml
flutter:
  uses-material-design: true
  assets:
    - lib/Assets/
```

After editing `pubspec.yaml` run:
```bash
flutter pub get
```

## Run (development)
- Web (Chrome): `flutter run -d chrome`
- Android: connect device / emulator then run: `flutter run`
- Windows (if configured): `flutter run -d windows`

If you change assets, run:
```bash
flutter clean
flutter pub get
flutter run
```

## Notes
- Make sure asset file names and paths match what `lib/shop.dart` uses.
- For Flutter Web, local assets are preferable to avoid CORS/network issues.
- Use `flutter pub outdated` to check and update package constraints.

## Contributing
- Edit `lib/shop.dart` to add/remove products.
- Add images to `lib/Assets/` and confirm names match the products.
- Open issues or PRs with changes.

```// filepath: c:\Users\IdeaPad\Music\mobile-app-main\README.md
# My Grocery App

A small Flutter app demonstrating a shop (school supplies), login/registration flow, and a simple cart using Provider.

## Prerequisites
- Flutter SDK (stable) installed and on PATH  
  Run: `flutter doctor`
- For Android builds: Android Studio + Android SDK
- For Windows desktop: Visual Studio with "Desktop development with C++"
- Chrome for Web runs (or an emulator/device)

## Dependencies
Add the package dependencies to `pubspec.yaml`:
```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0
```

## Assets
This project expects product images in `lib/Assets/` (e.g. `p1.jpg` … `p19.jpg`). Ensure `pubspec.yaml` lists the folder:
```yaml
flutter:
  uses-material-design: true
  assets:
    - lib/Assets/
```

After editing `pubspec.yaml` run:
```bash
flutter pub get
```

## Run (development)
- Web (Chrome): `flutter run -d chrome`
- Android: connect device / emulator then run: `flutter run`
- Windows (if configured): `flutter run -d windows`

If you change assets, run:
```bash
flutter clean
flutter pub get
flutter run
```

## Notes
- Make sure asset file names and paths match what `lib/shop.dart` uses.
- For Flutter Web, local assets are preferable to avoid CORS/network issues.
- Use `flutter pub outdated` to check and update package constraints.

## Contributing
- Edit `lib/shop.dart` to add/remove products.
- Add images to `lib/Assets/` and confirm names match the products.
- Open issues or PRs with changes.
