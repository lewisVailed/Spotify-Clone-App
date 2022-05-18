//
//  AuthResponse.swift
//  Spotify-Clone-App
//
//  Created by Ayberk Bilgiç on 17.05.2022.
//

import Foundation

struct AuthResponse: Codable {
    let access_token: String
    let expires_in: Int
    let refresh_token: String?
    let scope: String
    let token_type: String
    
}
