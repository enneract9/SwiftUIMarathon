import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ScrollRectangleView()
                .tabItem {
                    Image(systemName: "star")
                    Text("First")
                }
        }
    }
}

#Preview {
    ContentView()
}
