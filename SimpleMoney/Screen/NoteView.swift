//
//  NoteView.swift
//  SimpleMoney
//
//  Created by Vo Minh Don on 14/05/2024.
//

import SwiftUI

struct NoteView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text("123")
                    Text("123")
                    Text("123")
                    Text("123")
                    Text("123")
                    Text("123")
                    Text("123")
                    Text("123")
                    Text("123")
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            // Perform action when the "+" button is tapped
                        }) {
                            Image(systemName: "plus")
                                .foregroundStyle(.black)
                        }
                    }
                }
                .navigationTitle(Tab.note.title)
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    NoteView()
}
