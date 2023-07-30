//
//  LoadingComponent.swift
//  SignInWithAppleFeature
//
//  Created by Nur Azizah on 30/07/23.
//

import SwiftUI

struct LoadingComponent: View {
    @Binding var informationText: String
    
    var body: some View {
        VStack(spacing: 16) {
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
                .scaleEffect(2.0, anchor: .center)
            Text(informationText)
        }
        .padding(20)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct LoadingComponent_Previews: PreviewProvider {
    static var previews: some View {
        LoadingComponent(informationText: .constant("Loading..."))
    }
}
