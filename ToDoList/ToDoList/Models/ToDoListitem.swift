//
//  ToDoListitem.swift
//  ToDoList
//
//  Created by 奈木野諭吉 on 2023/11/16.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
