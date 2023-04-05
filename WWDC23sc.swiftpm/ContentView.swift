import SwiftUI




@available(iOS 16.0, *)
struct ContentView: View {
    
    
    var body: some View {
        
        NavigationSplitView {
            List {
                NavigationLink("Cook") {
                    Text("😵‍")
                }
                NavigationLink("Main Ingredient") {
                    Text("😵‍💫")
                }
                NavigationLink("Toos") {
                    Text("😵‍")
                }
                NavigationLink("Timer") {
                    Text("😵‍")
                }
        
                NavigationLink("Second link") {
                    Text("😵‍")
                }
                
                //#-learning-code-snippet(addMoreNavLinks)
            }

        } detail: {
          // Detail view for each of the menu item
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Helloㅁㄹㄴㅇㄹㅁㄴㄷㄹ, world!")
            }
        }

    }
}


@available(iOS 16.0, *)
struct ContentView_Preview: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
    
}
