# Finio 💸

Finio is a premium, beautifully crafted personal expense tracker built with Flutter. Designed with a striking "OLED Black" dark mode and vibrant neon emerald accents, Finio brings aesthetics and simplicity to tracking your daily spending.


## 🌟 Features

- **Quick Transaction Entry:** Seamlessly add new expenses using a beautifully designed bottom sheet modal.
- **Premium Aesthetics:** Hand-crafted UI featuring glass-like elevated cards, beautiful typography, and slick micro-animations.
- **Dynamic Localization:** Full, out-of-the-box support for multiple languages including **English, Hindi, and Marathi**. Finio also dynamically translates dates and relative time (like "Today" or "Yesterday").
- **Offline First & Blazing Fast:** Powered by Hive NoSQL, Finio doesn't rely on a server, ensuring instant load times and complete data privacy.
- **OLED Optimized:** The dark theme uses pure black (`#000000`), turning off pixels on OLED screens to save battery while making the neon UI elements pop!

## 📸 Screenshots & Demo
**⬇️ Download the App:** [Download APK via Google Drive](https://drive.google.com/file/d/1LzLB1SYvLx72Osje2mb1Llizlhj9hM0z/view?usp=sharing)

*For more samples, including all high-res screenshots, go to the `demo` folder.*

### Dark Theme
| Image 1 | Image 2 | Image 3 |
|:---:|:---:|:---:|
| <img src="https://raw.githubusercontent.com/codingbeast/finio/main/demo/dark_1.jpg" width="250"/> | <img src="https://raw.githubusercontent.com/codingbeast/finio/main/demo/dark_2.jpg" width="250"/> | <img src="https://raw.githubusercontent.com/codingbeast/finio/main/demo/dark_3.jpg" width="250"/> |

### Light Theme
| Image 1 | Image 2 | Image 3 |
|:---:|:---:|:---:|
| <img src="https://raw.githubusercontent.com/codingbeast/finio/main/demo/light_1.jpg" width="250"/> | <img src="https://raw.githubusercontent.com/codingbeast/finio/main/demo/light_2.jpg" width="250"/> | <img src="https://raw.githubusercontent.com/codingbeast/finio/main/demo/light_3.jpg" width="250"/> |

### 🎥 App Demo Video
[Click here to watch the full Video Demo](https://github.com/codingbeast/finio/raw/main/demo/demo_video.mp4)

## 🛠️ Tech Stack

- **Framework:** [Flutter](https://flutter.dev/)
- **State Management:** [Riverpod](https://riverpod.dev/) (Notifier/Provider architecture)
- **Local Database:** [Hive](https://docs.hivedb.dev/) (Fast, lightweight key-value database)
- **Localization:** [Easy Localization](https://pub.dev/packages/easy_localization)
- **Design:** Custom-built Design System (`ColorManager`, `AppTypography`, `AppSizes`)

## 🚀 Getting Started

### Prerequisites
Make sure you have [Flutter](https://docs.flutter.dev/get-started/install) installed on your machine.

### Installation

1. **Clone the repository** (if you haven't already):
   ```bash
   git clone git@github.com:codingbeast/finio.git
   cd finio
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Generate Localization Files:**
   If you ever modify the translation files (`assets/translations/*.json`), run this command to generate the Dart keys:
   ```bash
   flutter pub run easy_localization:generate -S assets/translations -O lib/generated -f keys -o locale_keys.g.dart
   ```

4. **Run the app:**
   ```bash
   flutter run
   ```

### Building the App

To generate a debug APK to install and test on an Android device:
```bash
flutter build apk --debug
```
The output file will be located at `build/app/outputs/flutter-apk/app-debug.apk`.

## 📂 Project Structure

```text
lib/
├── app/               # App routing and settings state
├── core/              # Foundational Design System (constants, themes, typography)
├── features/          # Feature modules
│   └── home/          # Main expense tracking interface
│       ├── domain/    # Data models (Transaction, Category)
│       ├── providers/ # Riverpod state management and mock data
│       └── widgets/   # UI components (e.g., AddTransactionModal)
├── generated/         # Auto-generated localization keys (easy_localization)
├── services/          # Core services like Hive local storage
└── main.dart          # Application entry point
```

## ⏱️ Development Stats
- **Total Elapsed Time:** ~3 hours and 17 minutes
- **Break Time:** ~41 minutes
- **Active Development Time:** ~2 hours and 36 minutes

## 🤝 Contributing
Contributions, issues, and feature requests are welcome! Feel free to check the issues page if you want to contribute.

---
*Built with assistance from Gemini 3.1 Pro.*