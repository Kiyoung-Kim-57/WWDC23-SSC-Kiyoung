import SwiftUI


struct ContentView: View {
    
    var body: some View {
        
        NavigationSplitView{
            List{
                NavigationLink{
                    StartView()
                }label: {
                    Text("Intro")
                }
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
            StartView()
         /*   ZStack{
                Color.bgColor
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Spacer().frame(width: UIScreen.width * 0.7)
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
                    }
                    Spacer().frame(height: UIScreen.height * 0.07)
                    Text("Simple Enigma")
                        .font(.system(size: 70))
                        .bold()
                    Spacer().frame(height: UIScreen.height * 0.1)
                    Image("Enigma")
                        .shadow(radius: 30)
                    Spacer().frame(height: UIScreen.height * 0.2)
                }*/
            }
            
        }
    }



struct ContentView_Preview: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
