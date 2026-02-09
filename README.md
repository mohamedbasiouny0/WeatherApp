Here is the full, raw Markdown content for your `README.md`. I’ve tailored this specifically to your implementation, highlighting your use of **Cubit** for state management, **Dio** for networking, and the **dynamic theming** logic you wrote.

# 🌦️ WeatherApp - Flutter Cubit Implementation

A professional, real-time weather application built with **Flutter**. This project focuses on clean architecture, efficient state management using **Cubit**, and a reactive UI that adapts to environmental conditions.

---

## 🚀 Key Technical Features

* **State Management (Cubit):** Utilizes `flutter_bloc` (Cubit) to handle UI states (Initial, Loading, Success, and Failure) without the boilerplate of full Blocs.
* **Networking with Dio:** Implements the **Dio** package for robust HTTP requests, featuring better error handling and cleaner syntax than the standard `http` package.
* **Dynamic Theming:** The app's primary color and theme automatically transition based on the current weather condition (e.g., Orange for Sunny, Blue for Cloudy, etc.), providing an immersive user experience.
* **Service-Oriented Architecture:** Logic is separated into a dedicated `WeatherService` for API calls, ensuring the UI remains decoupled from data fetching logic.
* **JSON Serialization:** Data is parsed into a structured `WeatherModel` for type-safe data handling across the app.

---

## 🛠️ Tech Stack

* **Framework:** [Flutter](https://flutter.dev)
* **Language:** [Dart](https://dart.dev)
* **State Management:** [Flutter Bloc/Cubit](https://pub.dev/packages/flutter_bloc)
* **HTTP Client:** [Dio](https://pub.dev/packages/dio)
* **Design Pattern:** Model-View-ViewModel (MVVM) / Service-Oriented.

---

## 📂 Project Structure

```text
lib/
├── cubits/          # Logic handling: GetWeatherCubit & WeatherStates
├── models/          # Data structure: WeatherModel
├── services/        # Network layer: WeatherService (Dio implementation)
├── views/           # UI Screens: HomeView and SearchView
├── widgets/         # Modular UI: WeatherInfoBody and NoWeatherBody
└── main.dart        # Global BlocProvider and Dynamic Theme logic

```

---

## ✨ Features

* **City Search:** Search for real-time weather data for any city globally.
* **Real-time Updates:** Displays temperature, Max/Min temp, and condition descriptions.
* **Context-Aware UI:** Beautiful weather icons and color schemes that change based on the weather status.
* **Reliable Error Handling:** Graceful handling of network errors or invalid city names.

---

## ⚙️ Getting Started

### Prerequisites

* Flutter SDK installed.
* An API Key from [OpenWeatherMap](https://openweathermap.org/api).

### Installation

1. **Clone the Repository:**
```bash
git clone [https://github.com/mohamedbasiouny0/WeatherApp.git](https://github.com/mohamedbasiouny0/WeatherApp.git)
cd WeatherApp

```


2. **Install Dependencies:**
```bash
flutter pub get

```


3. **Configure your API Key:**
Open `lib/services/weather_service.dart` and insert your API key:
```dart
final String apiKey = 'YOUR_API_KEY_HERE';

```


4. **Run the App:**
```bash
flutter run

```

## 📱 Previews

| Initial View | Search View | Clear Theme | Partly Cloud Theme | Overcast Theme | Freezing Fog Theme | Error Search Screen |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| <img width="200" height="2856" alt="Search to get info" src="https://github.com/user-attachments/assets/1d989fb7-8795-44bb-8789-ceeae682621b" /> | <img width="200" height="2856" alt="Search View" src="https://github.com/user-attachments/assets/c2d51599-4fa2-4518-9f11-51d2a271ce05" /> | <img width="200" alt="Clear theme" src="https://github.com/user-attachments/assets/30ee6165-a142-495a-911c-3d1ef35e8e22" /> | <img width="200" alt="Partly CLoudy theme" src="https://github.com/user-attachments/assets/1442879d-9818-4929-8287-1527a6b40ff5" /> | <img width="200" alt="Overcast theme" src="https://github.com/user-attachments/assets/7f95cec8-9f08-44c0-9b5c-3c8bc2e00b22" /> | <img width="200" alt="Freezing fog theme" src="https://github.com/user-attachments/assets/bf3253d9-1daa-4fc2-b32e-23f6c6d36e7d" /> | <img width="200"  alt="Error Search View" src="https://github.com/user-attachments/assets/53d130bb-01ee-4c71-87c9-28c4e546ff85" />

  
---

## 🤝 Contributing

Contributions make the open-source community better.

1. Fork the Project.
2. Create your Feature Branch (`git checkout -b feature/NewFeature`).
3. Commit your Changes (`git commit -m 'Add some NewFeature'`).
4. Push to the Branch (`git push origin feature/NewFeature`).
5. Open a Pull Request.

---

## 📧 Contact

**Mohamed Basiouny** - [GitHub Profile](https://www.google.com/search?q=https://github.com/mohamedbasiouny0)

Project Link: [https://github.com/mohamedbasiouny0/WeatherApp](https://github.com/mohamedbasiouny0/WeatherApp)

---
