//
//  AuthManager.swift
//  Spotify-Clone-App
//
//  Created by Ayberk Bilgiç on 1.05.2022.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    private init() {}
    
    struct Constants {
        static let clientID = "5d3e7eb22ac54d64be9c7d0fdfdc4e31"
        static let clientSecret = "e5faefe4c81d4c99b94fdd628cac3534"
    }
    
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURI = "https://www.spotify.com/tr/"
        let base = "https://accounts.spotify.com/authorize"
        let main = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)"
        return URL(string: main)
    }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
}
