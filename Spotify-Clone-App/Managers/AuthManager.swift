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
        static let tokenAPIURL = "https://accounts.spotify.com/api/token"
    }
    
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURI = "https://www.spotify.com/tr/"
        let base = "https://accounts.spotify.com/authorize"
        let main = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
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
    
    public func exchangeCodeForToken(
        code: String,
        completion: @escaping ((Bool) -> Void)
    ) {
        // get token
        guard let url = URL(string: Constants.tokenAPIURL) else {
            return
        }
        
        var companents = URLComponents()
        companents.queryItems = [
            URLQueryItem(name: "grant_type", value: "authorization_code"),
            URLQueryItem(name: "code", value: code),
            URLQueryItem(name: "redirect_uri", value: "https://www.spotify.com/tr/")
        ]
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpBody = companents.query?.data(using: .utf8)
        
        let basicToken = Constants.clientID+":"+Constants.clientSecret
        let data = basicToken.data(using: .utf8)
        guard let base64String = data?.base64EncodedString() else {
            print("Failure to get base64")
            completion(false)
            return
        }
        
        request.setValue("Basic \(base64String)", forHTTPHeaderField: "Authorization")
        let task = URLSession.shared.dataTask(with: request ) { data, _, error in
            guard let data = data,
                  error == nil else {
                completion(false)
                return
            }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data,
                                                            options: .allowFragments)
                print("SUCCESS: \(json)")
            } catch {
                print(error.localizedDescription)
                completion(false)
            }
            
        }
        task.resume()
    }
    
    public func refreshAccessToken() {
        
    }
    
    private func cacheToken() {
        
    }
}
