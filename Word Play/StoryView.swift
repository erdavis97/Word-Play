//
//  StoryView.swift
//  Word Play
//
//  Created by Ethan Davis on 10/16/23.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        func writeStory() -> String {
            return "Yesterday, I made a very \(words.adjective0) mistake, I felt so \(words.feeling). I was driving my \(words.noun), when I made a wrong turn and \(words.pastTenseVerb) my \(words.noun) into \(words.person)’s house. They turned \(words.color) and started trying to \(words.verb0) me with a \(words.object0), but I pulled a \(words.object1) out of my pocket and \(words.verb1) as hard as I could. Luckily, this worked, and I \(words.adverb) got away. My only injury was that my \(words.bodyPart) was \(words.adjective1). After days like that, I'm so glad that I work at a \(words.object1) factory."
        }
            // figure out how to set background
        let story = Text(writeStory())
            .background(Rectangle().frame(width: 394.0, height: 2000.0) .foregroundColor(.black))
            .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
            return story
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words: Words())
    }
}
struct CustomText: View {
    let text : String
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.bold)
    }
}
