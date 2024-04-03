//
//  NoteDetailView.swift
//  NoteApp
//
//  Created by นายธนภัทร สาระธรรม on 3/4/2567 BE.
//

import SwiftUI

struct NoteDetailView: View {
    let note: Note
    
    var body: some View {
        VStack {
            Text(note.title)
            Text(note.content)
            // Add more UI to display other details of the note
        }
    }
}