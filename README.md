# 🌦️ WeatherApp

[![Flutter Version](https://img.shields.io/badge/Flutter-v3.0+-02569B?logo=flutter)](https://flutter.dev)
[![Dart Version](https://img.shields.io/badge/Dart-v3.0+-0175C2?logo=dart)](https://dart.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A modern, high-performance Weather Application built with **Flutter**. This project demonstrates professional architectural patterns, utilizing **Cubit** for state management and **Dio** for resilient networking.

---

## 🚀 Technical Highlights

This project isn't just a basic weather app; it’s built with scalability in mind using expert-level Flutter practices:

* **State Management (Cubit):** Implements `flutter_bloc` (Cubit) to handle UI states (`InitialState`, `LoadingState`, `WeatherLoadedState`, and `WeatherFailureState`) ensuring a reactive and predictable user experience.
* **Networking with Dio:** Uses the **Dio** package instead of the standard HTTP library to take advantage of interceptors, global configuration, and better error handling.
* **Dynamic Theming:** Features a custom `getThemeColor()` logic in `main.dart` that dynamically updates the entire app's Material Color palette based on the weather condition (e.g., Orange for Sunny, Blue for Rain).
* **Separation of Concerns:** Follows a clean architecture where the API logic (`WeatherService`), Data structures (`WeatherModel`), and Business Logic (`WeatherCubit`) are completely decoupled from the UI.

---

## ✨ Features

- **Global City Search:** Instantly fetch weather data for any city in the world.
- **Detailed Forecast:** View current temperature, daily high/low, and specific weather conditions (e.g., "Light Rain," "Clear Sky").
- **Reactive UI:** Beautifully crafted interface that changes its visual identity based on the weather status.
- **Error Resilience:** Graceful handling of invalid city names or network failures with user-friendly feedback.

---

## 🛠️ Tech Stack

- **Framework:** [Flutter](https://flutter.dev)
- **Language:** [Dart](https://dart.dev)
- **State Management:** [Cubit (Bloc)](https://pub.dev/packages/flutter_bloc)
- **API Client:** [Dio](https://pub.dev/packages/dio)
- **Icons:** [FontAwesome](https://pub.dev/packages/font_awesome_flutter)
- **API Source:** [OpenWeatherMap API](https://openweathermap.org/)

---

## 📂 Project Structure

```text
lib/
├── cubits/          # State management: GetWeatherCubit & WeatherStates
├── models/          # Data layer: WeatherModel with factory constructors
├── services/        # Network layer: WeatherService (Dio implementation)
├── views/           # UI Screens: HomeView and SearchView
├── widgets/         # Modular components: WeatherInfoBody & NoWeatherBody
└── main.dart        # Entry point & Dynamic Theme configuration
## ⚙️ Getting StartedPrerequisitesFlutter SDK installed on your machine.An API Key from OpenWeatherMap.InstallationClone the Repository:Bashgit clone [https://github.com/mohamedbasiouny0/WeatherApp.git](https://github.com/mohamedbasiouny0/WeatherApp.git)
cd WeatherApp
Install Dependencies:Bashflutter pub get
Configure API Key:Open lib/services/weather_service.dart and replace the apiKey variable with your own:Dartfinal String apiKey = 'YOUR_API_KEY_HERE';
Run the App:Bashflutter run
📱 ScreenshotsSearch ViewSunny ThemeRainy Theme<img src="https://www.google.com/search?q=https://via.placeholder.com/200x400%3Ftext%3DSearch%2BScreen" width="200" /><img src="https://www.google.com/search?q=https://via.placeholder.com/200x400%3Ftext%3DSunny%2BUI" width="200" /><img src="https://www.google.com/search?q=https://via.placeholder.com/200x400%3Ftext%3DRainy%2BUI" width="200" />🤝 ContributingContributions are welcome! If you'd like to improve the UI or add new features:Fork the Project.Create your Feature Branch (git checkout -b feature/AmazingFeature).Commit your Changes (git commit -m 'Add some AmazingFeature').Push to the Branch (git push origin feature/AmazingFeature).Open a Pull Request.📄 LicenseThis project is licensed under the MIT License - see the LICENSE file for details.👨‍💻 Developed ByMohamed BasiounyGitHub: @mohamedbasiouny0
