import SwiftUI


struct ContentView: View {
    var body: some View {
        
        NavigationSplitView{
            List{
                NavigationLink{
                    CipherView()
                }label: {
                    Text("Cipher")
                }
                NavigationLink{
                    DecipherView()
                }label: {
                    Text("Decipher")
                }
                NavigationLink{
                    DictionaryView()
                }label: {
                    Text("Plates Dictionary")
                }
            }
        } detail: {
            ZStack{
                Color.bgColor
                    .ignoresSafeArea()
                Image("Enigma")
                    .shadow(radius: 30)
                    
            }
            
        }
    }
}


struct ContentView_Preview: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
