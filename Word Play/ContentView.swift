//
//  ContentView.swift
//  Word Play
//
//  Created by Ethan Davis on 10/13/23.
//

import SwiftUI
struct Words {
    var adjective0 = ""
    var adjective1 = ""
    
    var verb0 = ""
    var verb1 = ""
    var pastTenseVerb = ""
    
    var object0 = ""
    var object1 = ""
    
    var noun = ""
    var color = ""
    var adverb = ""
    var feeling = ""
    var bodyPart = ""
    var person = ""
}
struct ContentView: View {
    @State private var words = Words()
    @State private var imageName = "MadLibs"
    var body: some View {
        NavigationView {
            VStack {
                Text("Word Play")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Text("Please enter the requested words below")
                    .font(.headline)
                    .foregroundColor(.red)
                HStack {
                    VStack {
                        CustomTextField(placeholder: "adjective", variable: $words.adjective0)
                        CustomTextField(placeholder: "adjective", variable: $words.adjective1)
                        CustomTextField(placeholder: "object", variable: $words.object0)
                        CustomTextField(placeholder: "object", variable: $words.object1)
                        CustomTextField(placeholder: "verb", variable: $words.verb0)
                        CustomTextField(placeholder: "verb", variable: $words.verb1)
                           }
                    VStack {
                        CustomTextField(placeholder: "color", variable: $words.color)
                        CustomTextField(placeholder: "feeling", variable: $words.feeling)
                        CustomTextField(placeholder: "body part", variable: $words.bodyPart)
                        CustomTextField(placeholder: "adverb", variable: $words.adverb)
                        CustomTextField(placeholder: "noun", variable: $words.noun)
                        CustomTextField(placeholder: "person", variable: $words.person)
                    }
                }
                HStack {
                    CustomTextField(placeholder: "past tense verb", variable: $words.pastTenseVerb)
                }
                Image(imageName)
                    .resizable()
                    .padding(.all)
                NavigationLink("Read your story", destination: StoryView(words: words))
            }
        }
        .navigationTitle("Word Play")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
            .font(.body)
    }
}
