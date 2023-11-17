//
//  ContentView.swift
//  ToDoList
//
//  Created by 奈木野諭吉 on 2023/11/15.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            //signed in
            ToDoListView()
        } else {
            LoginView()
        }

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
