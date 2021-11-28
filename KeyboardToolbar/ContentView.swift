//
//  ContentView.swift
//  KeyboardToolbar
//
//  Created by Federico on 28/11/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var text = ""
    @State private var mood = "mood"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("You are feeling '\(mood)'.")
            TextField("How are you?", text: $text)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Button("Reset") {
                            self.mood = "mood"
                        }.tint(.red)
                        
                        Button("Preview") {
                            self.mood = text
                        }
                    }
                }.textInputAutocapitalization(.never)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
