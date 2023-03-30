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
            imageIndex = Int.random(in: 0..<4)
        }) {
            Text("Tap me!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
