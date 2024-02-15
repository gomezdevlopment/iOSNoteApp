//
//  ContentView.swift
//  noteApp
//
//  Created by Pablo Nathanielle Gomez on 2/15/24.
//

import SwiftUI

struct ContentView: View {
    var notes:[String]
    let grid = [GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: grid){
                    ForEach(notes, id:\.self){note in
                        NavigationLink(destination: NoteView(editableText: note, isNewNote: false)){
                            NotePreview(noteText: note)
                        }
                    }
                }
            }
            .navigationTitle("Notes")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing){
                    NavigationLink(destination: NoteView(editableText: "", isNewNote: true)){
                        Text("New Note")
                    }
                }
            }
        }
    }
}

struct NotePreview: View {
    var noteText: String
    let noteWidth = UIScreen.main.bounds.width * 0.3
    var body: some View{
        ZStack(alignment: .topLeading){
            RoundedRectangle(cornerRadius: 5)
                .fill(Color.yellow)
                .frame(width: noteWidth, height: noteWidth)
            Text(noteText).padding(10).foregroundStyle(Color.black)
        }
    }
}

var testNotes = ["this", "is", "a", "list", "of", "notes"]
#Preview {
    ContentView(notes: testNotes)
}
