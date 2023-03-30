import SwiftUI

struct ContentView: View {
    @State private var greeting = "Amsterdam"
    @State private var tapCount = 0
    @State private var imageIndex = 0
    @State private var textIndex = 0
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
            Text("Button tapped \(tapCount) times")
            Text("Correct: \(correctCount), Wrong: \(wrongCount)")
        }
        HStack {
            Button(action: {
                tapCount += 1
                if imageIndex == 0 || imageIndex == 3 {
                    if textIndex == 0 {
                        greeting = "San Francisco"
                        textIndex = 1
                    } else {
                        greeting = "Amsterdam"
                        textIndex = 0
                    }
                    correctCount += 1
                } else {
                    greeting = "Sorry, try again!"
                    wrongCount += 1
                }
            }) {
                Text("Button 1")
            }
            .padding()
            Button(action: {
                tapCount += 1
                if textIndex == 1 && imageIndex == 0 {
                    greeting = "Smiley and San Francisco"
                    correctCount += 1
                } else {
                    greeting = "Sorry, try again!"
                    wrongCount += 1
                }
            }) {
                Text("Button 2")
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
