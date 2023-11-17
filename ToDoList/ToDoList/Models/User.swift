//
//  User.swift
//  ToDoList
//
//  Created by 奈木野諭吉 on 2023/11/16.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
