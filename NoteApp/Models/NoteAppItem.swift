//
//  NoteAppItem.swift
//  NoteApp
//
//  Created by นายธนภัทร สาระธรรม on 3/4/2567 BE.
//

import Foundation

struct NoteAppItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
