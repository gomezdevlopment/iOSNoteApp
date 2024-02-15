//
//  noteAppApp.swift
//  noteApp
//
//  Created by Pablo Nathanielle Gomez on 2/15/24.
//

import SwiftUI

@main
struct noteAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(notes: testNotes)
        }
    }
}
