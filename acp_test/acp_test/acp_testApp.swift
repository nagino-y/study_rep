//
//  acp_testApp.swift
//  acp_test
//
//  Created by 奈木野諭吉 on 2023/11/04.
//

import SwiftUI
import FirebaseCore

@main
struct acp_testApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
