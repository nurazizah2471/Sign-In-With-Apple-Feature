//
//  SignInButton.swift
//  SignInWithAppleFeature
//
//  Created by Nur Azizah on 30/07/23.
//

import SwiftUI
import AuthenticationServices

struct SignInButtonView: View {
    @EnvironmentObject var user: User
    @Environment(\.colorScheme) var colorScheme
    
    @Binding var isLoading: Bool
    
    var body: some View {
        VStack {
            SignInWithAppleButton(.continue) { request in
                request.requestedScopes = [.email, .fullName]
                
            } onCompletion: { result in
                isLoading = true
                
                switch result {
                case .success(let auth):
                    
                    switch auth.credential {
                    case let credential as ASAuthorizationAppleIDCredential:
                        
                        let userID = credential.user
                        let firstName = credential.fullName?.givenName
                        let lastName = credential.fullName?.familyName
                        let email = credential.email
                        
                        self.user.userID = userID
                        self.user.firstName = firstName ?? ""
                        self.user.lastName = lastName ?? ""
                        self.user.email = email ?? ""
                        
                    default:
                        break
                    }
                    
                case .failure(let error):
                    print(error)
                }
                
                sleep(1)
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    isLoading = false
                }
            }
            .signInWithAppleButtonStyle(
                colorScheme == .dark ? .white : .black
            )
            .frame(height: 50.0)
            .padding()
            .cornerRadius(10.0)
        }
    }
}

struct SignInButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SignInButtonView(isLoading: .constant(false))
    }
}
