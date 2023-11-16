//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by 奈木野諭吉 on 2023/11/15.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
