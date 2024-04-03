//
//  NoteViewModel.swift
//  NoteApp
//
//  Created by นายธนภัทร สาระธรรม on 3/4/2567 BE.
//

import Foundation
import FirebaseFirestore

class NoteViewModel: ObservableObject {
    @Published var notes: [Note] = []
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
        fetchNotes()
    }
    
    func fetchNotes() {
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("notes")
            .addSnapshotListener { querySnapshot, error in
                guard let documents = querySnapshot?.documents else {
                    print("Error fetching documents: \(error?.localizedDescription ?? "Unknown error")")
                    return
                }
                
                self.notes = documents.compactMap { queryDocumentSnapshot in
                    try? queryDocumentSnapshot.data(as: Note.self)
                }
            }
    }
    
    func delete(noteId: String) {
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("notes")
            .document(noteId)
            .delete()
    }
}
