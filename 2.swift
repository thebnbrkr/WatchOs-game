import SwiftUI

struct ContentView: View {
    @State private var greeting = "Hello Ani"
    @State private var tapCount = 0
    @State private var buttonText = "Tap me!"
    @State private var isCorrectButtonTapped = false
    
    let greetings = ["Hello Ani", "Schrödinger", "Luxembourg", "Suomi","Amsterdam","Apple", "Kochi","Tokyo", "Köln", "Oslo børs", "Buckinghamshire","Valetta"]
    
    var body: some View {
        VStack {
            Text(greeting)
            Text("Button tapped \(tapCount) times")
            Button(action: {
                buttonText = "You tapped the correct button!"
                isCorrectButtonTapped = true
            }) {
                Text("Button 1 (A-L)")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
            }
            Button(action: {
                buttonText = "You tapped the correct button!"
                isCorrectButtonTapped = true
            }) {
                Text("Button 2 (M-Z)")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
            }
            .padding()
        }
        .onChange(of: greeting) { newValue in
            let firstLetter = String(newValue.prefix(1)).uppercased()
            if firstLetter >= "A" && firstLetter <= "L" {
                buttonText = "Tap Button 1 (A-L)"
            } else if firstLetter >= "M" && firstLetter <= "Z" {
                buttonText = "Tap Button 2 (M-Z)"
            }
            isCorrectButtonTapped = false
        }
        .onChange(of: isCorrectButtonTapped) { newValue in
            if !newValue {
                buttonText = "Sorry, wrong button tapped."
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
