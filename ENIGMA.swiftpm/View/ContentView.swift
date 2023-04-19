import SwiftUI


struct ContentView: View {
    @State var showContentModal = false
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
                    CreatePlateView()
                }label: {
                    Text("Create Random Rotor")
                }
                NavigationLink{
                    DictionaryView()
                }label: {
                    Text("Rotors List")
                }
            }
        } detail: {
            ZStack{
                Color.bgColor
                    .ignoresSafeArea()
                VStack{
                    Button{
                        showContentModal.toggle()
                    } label: {
                        Image(systemName: "doc")
                            .foregroundColor(.black)
                            .font(.system(size: 60))
                    }
                    .sheet(isPresented: $showContentModal){
                        ContentModalView()
                    }
                    Image("Enigma")
                        .shadow(radius: 30)
                }
            }
            
        }
    }
}


struct ContentView_Preview: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
