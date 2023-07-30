//
//  LoadingView.swift
//  SignInWithAppleFeature
//
//  Created by Nur Azizah on 30/07/23.
//

import SwiftUI

struct LoadingView: View {
    @Binding var informationText: String
    
    var body: some View {
        VStack {
            Color.black.opacity(0.3)
                .edgesIgnoringSafeArea(.all)
                .overlay(
                    VStack {
                        LoadingComponent(informationText: $informationText)
                    }
                )
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(informationText: .constant("Loading..."))
    }
}
