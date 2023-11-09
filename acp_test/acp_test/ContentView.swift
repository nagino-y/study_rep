//
//  ContentView.swift
//  acp_test
//
//  Created by 奈木野諭吉 on 2023/11/04.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    @AppStorage("uid") var userID: String = ""
    
    var body: some View {
        if userID == "" {
            AuthView()
        } else {
            Text("Logged In! \nYour user id is \(userID)")
            
            Button(action:{
                let firebaseAuth = Auth.auth()
                do {
                  try firebaseAuth.signOut()
                    withAnimation{
                        userID = ""
                    }
                    
                } catch let signOutError as NSError {
                  print("Error signing out: %@", signOutError)
                }
            }){
                Text("Sign out")
            }
            
            Spacer()
            Spacer()
            
            HStack{
                Button(action:{}){
                    VStack{
                        Image("home_icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        Text("ホーム")
                    }
                }
                Button(action:{}){
                    VStack{
                        Image("zoom_icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        Text("練習日程調整")
                    }
 
                }
                Button(action:{}){
                    VStack{
                        Image("people_icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        Text("パート一覧")
                    }
                }
            }



        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
