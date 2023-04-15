//
//  ContentView.swift
//  Project Watch App
//
//  Created by Anirudh Anil on 2023-03-25.
//
import SwiftUI

struct ContentView: View {
    @State private var greeting = "San Francisco"
    @State private var tapCount = 0
    @State private var imageIndex = 2
    @State private var textIndex = 1
    @State private var correctCount = 0
    @State private var wrongCount = 0


    var body: some View {
        VStack {
            switch imageIndex {
            case 0:
                Image(systemName: "smiley")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
            case 1:
                Image(systemName: "flag")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
            case 2:
                Image(systemName: "snow")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
            default:
                Image(systemName: "arrow.up")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
            }
            Text(greeting)
            Text("Your Score: \(correctCount-wrongCount)")
            Text("Correct: \(correctCount), Wrong: \(wrongCount)")
        }
        HStack {
            Button(action: {
                tapCount += 1
                imageIndex = Int.random(in: 0...3)
                if imageIndex == 0 || imageIndex == 3 {
    
                    greeting = textIndex == 0 ? "Amsterdam" : "San Francisco"
                    correctCount += 1
                    textIndex = Int.random(in: 0...1) // randomly select between "Amsterdam" and "San Francisco"
                    imageIndex = Int.random(in: 0...3)

                } else {
                    wrongCount += 1
                    textIndex = Int.random(in: 0...1) // randomly select between "Amsterdam" and "San Francisco"
                    imageIndex = Int.random(in: 0...3)

                }
            }

            ) {
                Text("X")
            }
            .padding()
            Button(action: {
                tapCount += 1
                imageIndex = Int.random(in: 0...3)
                if textIndex == 1 && (imageIndex == 2 || imageIndex == 1) {
                    greeting = "San Francisco"
                    correctCount += 1
                   textIndex = Int.random(in: 0...1) // randomly select between "Amsterdam" and "San Francisco"
                    imageIndex = Int.random(in: 0...3)


                } else {
                    wrongCount += 1
                    textIndex = Int.random(in: 0...1) // randomly select between "Amsterdam" and "San Francisco"
                    imageIndex = Int.random(in: 0...3)

                }
            }) {
                Text("I")
            }
            .padding()
            Button( action: {
                tapCount += 1
                imageIndex = Int.random(in: 0...3)
                if textIndex == 0 && (imageIndex == 2 || imageIndex == 1) {
                    greeting = "Amsterdam"
                    correctCount += 1
                    textIndex = Int.random(in: 0...1) // randomly select between "Amsterdam" and "San Francisco"
                    imageIndex = Int.random(in: 0...3)

                } else if imageIndex == 0 || imageIndex == 3 {
                //    textIndex = Int.random(in: 0...1) // randomly select between "Amsterdam" and "San Francisco"
                    greeting = textIndex == 1 ? "Amsterdam" : "San Francisco"
                    correctCount += 1
                    textIndex = Int.random(in: 0...1) // randomly select between "Amsterdam" and "San Francisco"
                    imageIndex = Int.random(in: 0...3)
                }
                else {
                  //  textIndex = Int.random(in: 0...1) // randomly select between "Amsterdam" and "San Francisco"
                    wrongCount += 1
                    textIndex = Int.random(in: 0...1) // randomly select between "Amsterdam" and "San Francisco"
                    imageIndex = Int.random(in: 0...3)
                }
            })
            {
                Text("O")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
