# 🎵 Spotify Clone App

A fully-featured music streaming application that replicates the core functionality of Spotify. Built with Swift and UIKit, this project demonstrates proficiency in iOS development, API integration, and modern architectural patterns.

[![Swift](https://img.shields.io/badge/Swift-5.0+-FA7343?style=flat&logo=swift&logoColor=white)](https://swift.org)
[![iOS](https://img.shields.io/badge/iOS-14.0+-000000?style=flat&logo=apple&logoColor=white)](https://www.apple.com/ios)

## 📸 Screenshots

*Screenshots coming soon - working on capturing the best views!*

## ✨ Features

### Core Functionality
- 🎧 **Music Playback** - Full audio player with play, pause, skip controls
- 🔍 **Search** - Search for songs, albums, artists, and playlists
- 📱 **Browse** - Discover new music and trending tracks
- 🎵 **Playlists** - View and manage playlists
- 👤 **User Authentication** - Secure login with Spotify Web API

### Technical Features
- **API Integration** - Real-time data from Spotify Web API
- **Custom UI Components** - Programmatically designed UI elements
- **Network Layer** - Efficient API calls with proper error handling
- **Authentication Flow** - OAuth 2.0 implementation
- **Haptic Feedback** - Enhanced user experience with haptics
- **Responsive Design** - Works seamlessly on all iPhone sizes

## 🛠️ Tech Stack

### Frameworks & Libraries
- **UIKit** - UI framework
- **Foundation** - Core iOS framework
- **AVFoundation** - Audio playback (if applicable)
- **URLSession** - Networking

### Architecture
- **MVC** (Model-View-Controller)
- Separation of concerns
- Modular code structure

### APIs
- **Spotify Web API** - Music data and playback
- OAuth 2.0 authentication

## 📋 Requirements

- iOS 14.0+
- Xcode 13.0+
- Swift 5.0+
- Spotify Developer Account (for API keys)

## 🚀 Getting Started

### Prerequisites

1. **Spotify Developer Account**
   - Go to [Spotify Developer Dashboard](https://developer.spotify.com/dashboard)
   - Create a new app
   - Get your `Client ID` and `Client Secret`

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/lewisVailed/Spotify-Clone-App.git
   cd Spotify-Clone-App
   ```

2. **Configure API Keys**
   - Open the project in Xcode
   - Navigate to `Constants.swift` (or wherever you store API keys)
   - Add your Spotify API credentials:
   ```swift
   struct APIConstants {
       static let clientID = "YOUR_CLIENT_ID"
       static let clientSecret = "YOUR_CLIENT_SECRET"
       static let redirectURI = "YOUR_REDIRECT_URI"
   }
   ```

3. **Build and Run**
   - Open `Spotify-Clone-App.xcodeproj` in Xcode
   - Select your target device/simulator
   - Press `Cmd + R` to build and run

## 📁 Project Structure

```
Spotify-Clone-App/
├── Models/              # Data models
├── Views/               # UI components and views
├── Controllers/         # View controllers
├── Managers/            # Service managers (Auth, Network, etc.)
├── Resources/           # Assets, fonts, etc.
├── Helpers/             # Utility classes and extensions
└── Supporting Files/    # AppDelegate, SceneDelegate, etc.
```

## 🎓 What I Learned

Building this project helped me develop strong skills in:
- Working with RESTful APIs and OAuth 2.0
- Implementing complex UI layouts programmatically
- Managing authentication flows
- Handling asynchronous operations
- Error handling and network requests
- iOS design patterns and architecture

## 🚧 Future Improvements

- [ ] Add SwiftUI views for modern UI components
- [ ] Implement Core Data for offline playback
- [ ] Add lyrics display feature
- [ ] Implement social features (share songs, follow friends)
- [ ] Add dark mode support
- [ ] Unit and UI tests

## 🐛 Known Issues

- Some API rate limits may affect search performance
- Playback may require Spotify Premium account

## 🙏 Acknowledgments

- [Spotify Web API](https://developer.spotify.com/documentation/web-api/) - For providing the music data
- iOS Academy YouTube Channel - For initial guidance and inspiration
- Apple Developer Documentation

## 📧 Contact

Ayberk Bilgiç
- LinkedIn: [ayberkbilgic](https://www.linkedin.com/in/ayberk-bilgiç-2756b4255/)
- Email: ayberkbilgic@outlook.com
- GitHub: [@lewisVailed](https://github.com/lewisVailed)

---

⭐ If you found this project helpful, please give it a star!

**Note:** This is a clone project for educational purposes. Spotify and its logo are trademarks of Spotify AB.
