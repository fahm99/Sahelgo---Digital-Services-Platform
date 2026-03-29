# Sahelgo - Digital Services Platform

A modern Flutter application providing seamless access to government and financial services in one unified platform.

## Overview

Sahelgo is a comprehensive digital services application built with Flutter, designed to simplify access to various government services, financial transactions, and real-time information. The app offers an intuitive interface with support for multiple services including airport inquiries, currency exchange rates, and government services.

## Features

- **Splash Screen** - Beautiful animated introduction with app branding
- **User Authentication** - Secure login interface with credential management
- **Home Dashboard** - Quick access to all available services and real-time currency rates
- **Airport Inquiries** - Real-time flight information and status tracking
- **Currency Exchange** - Live exchange rates with buy/sell pricing
- **Government Services** - Access to various government service categories
- **Navigation Drawer** - Easy access to account settings and app information
- **Bottom Navigation** - Quick navigation between main sections

## Technical Stack

- **Framework**: Flutter 3.0+
- **State Management**: Riverpod
- **Routing**: GoRouter
- **Typography**: Google Fonts (Tajawal)
- **Theme**: Material Design 3

## Project Structure

```
lib/
├── app/
│   ├── screens/          # Application screens
│   ├── widgets/          # Reusable UI components
│   └── router/           # Navigation configuration
├── config/
│   └── theme/            # App theming and colors
└── data/
    ├── models/           # Data models
    └── providers/        # State management providers
```

## Screenshots

### Splash Screen
![Splash Screen](assets/screens/splash.png)

### Login Screen
![Login Screen](assets/screens/login.png)

### Home Dashboard
![Home Screen](assets/screens/home.png)

### Navigation Drawer
![Drawer](assets/screens/drawer.png)

## Getting Started

### Prerequisites
- Flutter SDK 3.0 or higher
- Dart 3.0 or higher

### Installation

1. Clone the repository
```bash
git clone <repository-url>
cd sahelgo
```

2. Install dependencies
```bash
flutter pub get
```

3. Run the application
```bash
flutter run
```

## Color Scheme

- **Primary**: #8c4a00 (Brown)
- **Primary Fixed**: #fd8b00 (Orange)
- **Secondary**: #4953ac (Blue)
- **Error**: #b02500 (Red)

## Dependencies

- `flutter_riverpod: ^2.4.0` - State management
- `riverpod_annotation: ^2.3.0` - Riverpod annotations
- `go_router: ^13.0.0` - Navigation and routing
- `google_fonts: ^6.1.0` - Custom typography

## App Flow

1. **Splash Screen** → Displays app branding for 3 seconds
2. **Login Screen** → User authentication
3. **Home Dashboard** → Main hub with services and currency rates
4. **Services** → Access to specific services like airport inquiries
5. **Navigation** → Drawer and bottom navigation for easy access

## License

This project is proprietary and confidential.

## Support

For support and inquiries, please contact the development team.
