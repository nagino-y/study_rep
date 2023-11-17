//
//  RegisterView.swift
//  ToDoList
//
//  Created by 奈木野諭吉 on 2023/11/16.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        @State var name = ""
        @State var email = ""
        @State var password = ""
        
        VStack {
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       angle: -15,
                       background: .orange)
            
            Form{
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Eamil Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(
                    title: "Create Account",
                    background: .green
                ){
                    //Attempt Registration
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
