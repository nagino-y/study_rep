//
//  AuthView.swift
//  acp_test
//
//  Created by 奈木野諭吉 on 2023/11/04.
//

import SwiftUI

struct AuthView: View {
    @State private var currentViewShowing: String = "Login" //login or sing up
    var body: some View {
        if(currentViewShowing == "login"){
            LoginView(currentShowingView: $currentViewShowing)
                .preferredColorScheme(.light)
        }else {
            SignUpView(currentShowingView: $currentViewShowing)
                .preferredColorScheme(.dark)
                .transition(.move(edge: .bottom))
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
