//
//  Note.swift
//  NoteApp
//
//  Created by นายธนภัทร สาระธรรม on 3/4/2567 BE.
//

import Foundation

struct Note: Codable, Identifiable {
    let id: String
    let title: String
    let content: String
    let timestamp: TimeInterval
}