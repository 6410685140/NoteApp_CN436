//
//  NoteAppApp.swift
//  NoteApp
//
//  Created by นายธนภัทร สาระธรรม on 2/4/2567 BE.
//

import SwiftUI
import FirebaseCore

@main
struct NoteAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
