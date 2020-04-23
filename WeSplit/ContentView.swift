//
//  ContentView.swift
//  WeSplit
//
//  Created by Massimo Polimeni on 23/04/2020.
//  Copyright © 2020 Massimo Polimeni. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    @State private var name = ""
    
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = 0

    var body: some View {
        NavigationView {
            Form {
                Section {
                    Button("Tap Count: \(tapCount)") {
                        self.tapCount += 1
                    }
                }
                
                Section {
                    TextField("Enter your name:", text: $name)
                    Text("Your name is \(name)")
                }
                
                Section {
                    Picker("Select your student", selection: $selectedStudent) {
                        ForEach(0 ..< students.count) {
                            Text(self.students[$0])
                        }
                    }
                    Text("You chose: \(students[selectedStudent])")
                }
            }
        .navigationBarTitle("WeSplit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
