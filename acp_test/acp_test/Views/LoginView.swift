//
//  LoginView.swift
//  acp_test
//
//  Created by 奈木野諭吉 on 2023/11/04.
//

import SwiftUI
import FirebaseAuth
//import FirebaseCore
//import GoogleSignIn


struct LoginView: View {
    @Binding var currentShowingView: String
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    @AppStorage("uid") var userID: String = ""
    
    private func isValidPassword(_ password: String) -> Bool{
        //minimum 6
        //1 upper
        let passwordRegex = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[A-Z]).{6,}$")
        
        return passwordRegex.evaluate(with: password)
        
    }
    
    var body: some View {
        ZStack{
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    Text("Welcome Back!")
                        .font(.largeTitle)
                        .bold()
                    
                    Spacer()
                }
                .padding()
                .padding(.top)
                
                Spacer()
                
                //mailアドレス入力欄
                HStack{
                    Image(systemName: "mail")
                    TextField("Email", text: $email)
                    
                    Spacer()
                    
                    if(email.count != 0){
                        
                        Image(systemName: email.isValidEmail() ? "checkmark": "xmark")
                            .fontWeight(.bold)
                            .foregroundColor(email.isValidEmail() ? .green: .red)
                    }

                }
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 2)
                        .foregroundColor(.black)
                )
                .padding()
                
                //パスワード入力欄
                HStack{
                    Image(systemName: "lock")
                    SecureField("大文字が少なくとも1文字＋6文字以上", text: $password)
                    
                    Spacer()
                    
                    if(password.count != 0){
                        Image(systemName: isValidPassword(password) ? "checkmark" : "xmark")
                            .fontWeight(.bold)
                            .foregroundColor(isValidPassword(password) ? .green: .red)
                    }

                }
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 2)
                        .foregroundColor(.black)
                )
                .padding()
                

                

                
                Button (action: {
                    withAnimation{
                        self.currentShowingView = "signin"
                    }
                }){
                    Text("新しくアカウントを作る")
                        .foregroundColor(.black.opacity(0.7))
                }
                    
                Spacer()
                Spacer()
                
                Button {
                    Auth.auth().signIn(withEmail: email, password: password) {authResult, error in
                        if let error = error {
                            print(error)
                            return
                        }
                        if let authResult = authResult{
                            print(authResult.user.uid)
                            withAnimation{
                                userID = authResult.user.uid
                            }
                        }
                      
                    }
                    
                    
                } label: {
                    Text("Sign In")
                        .foregroundColor(.white)
                        .font(.title3)
                        .bold()
                    
                        .frame(maxWidth: .infinity)
                        .padding()
                    
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.black))
                        .padding(.horizontal)
                    
                }

                
            }
        }
    }
}
