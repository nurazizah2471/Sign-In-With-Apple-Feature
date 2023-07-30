//
//  DashboardView.swift
//  SignInWithAppleFeature
//
//  Created by Nur Azizah on 28/07/23.
//

import Foundation
import SwiftUI

struct DashboardView: View {
    @EnvironmentObject var user: User
    
    var body: some View {
        VStack {
            Text("Hello \(self.user.firstName.isEmpty ? "Anonym" : self.user.firstName) \(self.user.lastName.isEmpty ? "" : self.user.lastName)\(self.user.email.isEmpty ? "" : ",")")
            
            if !self.user.email.isEmpty {
                Text("Thanks for sign in with your email: \(self.user.email)")
                Text(self.user.email)
            }
            
            SignOutButtonView()
                .padding(.top, 80)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
            .environmentObject(User())
    }
}
