# 🌤️ SwiftUI Weather App

This project is a **SwiftUI** application that fetches real-time weather data using **WeatherAPI**. It provides up-to-date weather information, including temperature, conditions, and forecasts for different cities worldwide. 🌍 📊


---

## 🚀 Features

✅ Real-time weather data ☀️ 🌧️  
✅ City-based weather lookup 📍  
✅ **Daily and 7-day forecast support** 📆  
✅ **Dark Mode support for night display** 🌙  
✅ Built using **SwiftUI & Combine** for a smooth UI experience 🚀  

---

## 🛠️ Setup & Installation

### **1. Clone the Repository**
```sh
 git clone https://github.com/sweoguzhan/SwiftUI-WeatherApp.git
 cd SwiftUI-WeatherApp
```

### **2. Install Dependencies**
- Ensure you have **Xcode 15+** installed.
- Open the project in Xcode.

### **3. Get a WeatherAPI Key**
1. Visit [WeatherAPI](https://www.weatherapi.com/) and sign up.
2. Get your free API key.
3. Replace `YOUR_API_KEY_HERE` in `WeatherService.swift`:
   ```swift
   let apiKey = "YOUR_API_KEY_HERE"
   ```

### **4. Run the App**
Click ▶️ in Xcode or run:
```sh
 xcodebuild run
```

---

## 📡 API Usage
This project uses the [WeatherAPI](https://www.weatherapi.com/) to fetch weather data. The app makes requests to:

### **1. Current Weather API**
```
https://api.weatherapi.com/v1/current.json?key=YOUR_API_KEY_HERE&q=London&aqi=no
```
- Retrieves real-time weather data for a given city.

### **2. 7-Day Forecast API**
```
https://api.weatherapi.com/v1/forecast.json?key=YOUR_API_KEY_HERE&q=London&days=7&aqi=no
```
- Fetches a 7-day weather forecast.

---

## 🏗️ Project Structure
```
SwiftUI-WeatherApp/
│── FirstSwiftUIApp.xcodeproj
│── Sources/
│   ├── Models/       # Data models (WeatherResponse, Location, etc.)
│   ├── Views/        # SwiftUI UI Components
│   ├── Services/     # API calls and networking
│   ├── Assets/       # Icons and images
│── Info.plist
│── README.md
```

---

## 🛠️ Technologies Used
- **SwiftUI** – Modern declarative UI framework
- **Combine** – Reactive programming for data fetching
- **WeatherAPI** – Provides real-time weather data
- **Xcode** – Development environment

---

## 📌 To-Do / Future Improvements
- [ ] Add city search functionality 🔍
- [ ] Implement a settings page ⚙️
- [ ] Improve UI animations and design ✨
- [ ] Add favorite locations feature 🌎

---

## 💡 Contributing
Pull requests are welcome! If you'd like to improve this project, feel free to fork it and submit a PR.

---

## 📜 License

---

## 📬 Contact
For any questions or feedback, feel free to reach out:
📧 Email: ogcengel@gmail.com 
