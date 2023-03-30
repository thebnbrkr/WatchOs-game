import SwiftUI

struct ContentView: View {
    @State private var greeting = "Hello Ani"
    @State private var tapCount = 0
    @State private var imageIndex = 0

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
        }
        Button(action: {
            tapCount += 1
            if greeting == "Hello Ani" && Int.random(in: 1...10) == 5 {
                greeting = "Amsterdam"
            } else if greeting == "Amsterdam" && Int.random(in: 1...10) == 5 {
                greeting = "Hello Ani"
            }
            imageIndex = Int.random(in: 0..<4)
        }) {
            Text("Tap me!")
        }
        .padding()
        Button(action: {
            if greeting == "Amsterdam" {
                greeting = "You made it!"
            } else {
                greeting = "Sorry, try again!"
            }
        }) {
            Text("Tap when greeting is Amsterdam")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
