//
//  SignInWithAppleFeatureApp.swift
//  SignInWithAppleFeature
//
//  Created by Nur Azizah on 28/07/23.
//

import SwiftUI

@main
struct SignInWithAppleFeatureApp: App {
    @StateObject private var userData = User()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userData)
        }
    }
}
