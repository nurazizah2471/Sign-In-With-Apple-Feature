//
//  SignOutButton.swift
//  SignInWithAppleFeature
//
//  Created by Nur Azizah on 30/07/23.
//

import SwiftUI

struct SignOutButtonView: View {
    @EnvironmentObject var user: User
    
    var body: some View {
        VStack {
            Button(action: {
                self.user.reset()
            }, label: {
                HStack(spacing: 15) {
                    Image(systemName: "rectangle.portrait.and.arrow.right.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(.white)
                    
                    Text("Sign Out")
                        .foregroundColor(Color.white)
                    
                }
                .padding(.horizontal, 80)
                .padding(.vertical, 10)
                .background(
                    RoundedRectangle(
                        cornerRadius: 100,
                        style: .continuous
                    )
                    .fill(.red)
                )
            })
        }
    }
}

struct SignOutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SignOutButtonView()
            .environmentObject(User())
    }
}
