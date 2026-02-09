# carcutter_test

## Setup Instructions

**Note:** This project uses code generation for data models. You must run the build command below before the project will compile, as the `.freezed.dart` and `.g.dart` files are excluded from version control.

1. **Install dependencies:**
   ```bash
   flutter pub get
   ```
2. **Generate missing files**
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```
3. **Generate missing files**
   ```bash
   flutter run
   ```
