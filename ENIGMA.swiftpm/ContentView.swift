import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationSplitView{
            List{
                NavigationLink{
                    CryptogramView()
                }label: {
                    Text("Create")
                }
                NavigationLink{
                    
                }label: {
                    Text("Decipher")
                }
            }
        } detail: {
            Text("Hello")
        }
    }
}


struct ContentView_Preview: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
