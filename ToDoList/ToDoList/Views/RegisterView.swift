//
//  RegisterView.swift
//  ToDoList
//
//  Created by 奈木野諭吉 on 2023/11/16.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegiserViewViewModel()
    
    
    var body: some View {

        VStack {
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       angle: -15,
                       background: .orange)
            
            Form{
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Eamil Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(
                    title: "Create Account",
                    background: .green
                ){
                    //Attempt Registration
                    viewModel.register()
                }
                .padding()
            }
            
            .offset(y: -50)
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
