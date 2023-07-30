//
//  ContentView.swift
//  SignInWithAppleFeature
//
//  Created by Nur Azizah on 28/07/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: User
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack {
            if self.user.userID.isEmpty {
                SignInButtonView(isLoading: $isLoading)
            } else {
                if isLoading {
                    LoadingView(informationText: .constant("Wait for a moment..."))
                } else {
                    DashboardView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(User())
    }
}
