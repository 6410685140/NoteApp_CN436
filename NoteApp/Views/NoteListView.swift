//
//  NoteListView.swift
//  NoteApp
//
//  Created by นายธนภัทร สาระธรรม on 3/4/2567 BE.
//

import SwiftUI

struct NoteListView: View {
    @ObservedObject var viewModel: NoteViewModel
    
    var body: some View {
        List(viewModel.notes) { note in
            Text(note.title)
            // Add more UI to display note content or other details
        }
        .onDelete(perform: deleteNote)
    }
    
    func deleteNote(at offsets: IndexSet) {
        offsets.forEach { index in
            let note = viewModel.notes[index]
            viewModel.delete(noteId: note.id)
        }
    }
}