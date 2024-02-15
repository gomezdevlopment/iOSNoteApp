//
//  NoteView.swift
//  noteApp
//
//  Created by Pablo Nathanielle Gomez on 2/15/24.
//

import SwiftUI

struct NoteView: View {
    @State var editableText: String
    var isNewNote: Bool
    var body: some View {
        ScrollView{
            TextField("Enter text", text: $editableText)
        }
        .toolbar{
            ToolbarItem(placement: .topBarTrailing){
                Button(action: {
                    
                },
                       label: {
                    Text(isNewNote ? "save" : "edit")
                }
                )
            }
        }
    }
}

#Preview {
    NoteView(editableText: "test", isNewNote: true)
}
