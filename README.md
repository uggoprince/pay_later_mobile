# pay-later-mobile
A Flutter UI implementation of a Pay Later shopping app.


## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK (included with Flutter)
- Android Studio / VS Code with Flutter extensions
- For iOS: Xcode (macOS only)
- For Web: Chrome browser

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/uggoprince/pay_later_mobile
   cd pay_later_mobile
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Download fonts (optional but recommended):**
   
   Download Poppins font family from [Google Fonts](https://fonts.google.com/specimen/Poppins) and place in `assets/fonts/`:
   - Poppins-Regular.ttf
   - Poppins-Medium.ttf
   - Poppins-SemiBold.ttf
   - Poppins-Bold.ttf
   
   Or uncomment the Google Fonts package in pubspec.yaml and modify the code to use google_fonts package.

### Running the App

**Web:**
```bash
flutter run -d chrome
```

**Android:**
```bash
flutter run -d android
```

**iOS (macOS only):**
```bash
flutter run -d ios
```

### Building for Release

**Web:**
```bash
flutter build web --release
```
The output will be in `build/web/`

**Android APK:**
```bash
flutter build apk --release
```
The output will be in `build/app/outputs/flutter-apk/app-release.apk`

**iOS (macOS only):**
```bash
flutter build ios --release
```

## 🏗️ Project Structure

```
pay_later_mobile/
├── lib/
│   ├── main.dart                    # App entry point
│   ├── constants/
│   │   ├── app_colors.dart          # Color definitions
│   │   └── app_styles.dart          # Text style definitions
│   ├── models/
│   │   ├── product.dart             # Product model & sample data
│   │   └── merchant.dart            # Merchant model & sample data
│   ├── screens/
│   │   └── home_screen.dart         # Main home screen
│   └── widgets/
│       ├── header_section.dart      # Pay Later header widget
│       ├── custom_search_bar.dart   # Search bar widget
│       ├── product_card.dart        # Product card widget
│       ├── merchant_item.dart       # Merchant circle widget
│       ├── products_grid_section.dart
│       └── featured_merchants_section.dart
├── assets/
│   ├── images/                      # Product & merchant images
│   └── fonts/                       # Poppins font files
└── pubspec.yaml                     # Project configuration
```

## 🎨 Design Implementation Details

### Color Palette
- Primary Blue: `#2F3ECF`
- Header Gradient: `#CDD4FF` → `#E8EBFF`
- Background: `#F5F6FA`
- Price Red: `#E53935`
- Text Primary: `#1A1A2E`
- Text Secondary: `#6B7280`

### Typography
- Font Family: Poppins
- Header Title: 28px, Bold
- Product Name: 14px, Medium
- Product Price: 16px, Bold
- Merchant Name: 12px, Medium

### Key UI Components

1. **Header Section**
   - Gradient background (light purple/blue)
   - "Pay later everywhere" title with info icon
   - Shopping limit display
   - "Activate Credit" primary button

2. **Search Bar**
   - Rounded pill shape with shadow
   - Search icon and placeholder text
   - QR code scanner button

3. **Product Cards**
   - Store branding at top
   - Product image (centered)
   - Product name (truncated)
   - Discounted price in red
   - Original price with strikethrough

4. **Featured Merchants**
   - Circular logos with brand colors
   - Status indicator badges (green/red/orange)
   - Custom logo rendering per merchant
