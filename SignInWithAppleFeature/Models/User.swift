//
//  User.swift
//  SignInWithAppleFeature
//
//  Created by Nur Azizah on 30/07/23.
//

import Foundation

class User: Identifiable, ObservableObject {
    @Published var userID: String
    @Published var firstName: String
    @Published var lastName: String
    @Published var email: String
    
    init() {
        userID = ""
        firstName = ""
        lastName = ""
        email = ""
    }
    
    func reset() {
        userID = ""
        firstName = ""
        lastName = ""
        email = ""
    }
}
