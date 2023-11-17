//
//  LoginView.swift
//  ToDoList
//
//  Created by 奈木野諭吉 on 2023/11/16.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var ViewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                //Header
                HeaderView(title: "To Do List",
                           subtitle: "Get things done",
                           angle: 15,
                           background: .pink)
                

                
                //Login Form
                Form {
                    if !ViewModel.errorMassage.isEmpty {
                        Text(ViewModel.errorMassage)
                            .foregroundColor(Color.red)
                    }
                    
                    
                    TextField("Email Address", text: $ViewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $ViewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(
                        title: "Log In",
                        background: .blue
                    ){
                        //Attempt Log In
                        ViewModel.login()
                    }
                    .padding()
                }
                .offset(y: -50)
                
                //Create Account
                VStack {
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
