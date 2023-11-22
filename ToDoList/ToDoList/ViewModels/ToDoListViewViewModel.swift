//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by 奈木野諭吉 on 2023/11/16.
//

import Foundation

///ViewModel for list of items view
///Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
}
