import SwiftUI




//UIscreen.mainScreen.bounds.width 써보자
//@available(iOS 16.0, *)
struct ContentView: View {
    @State private var selectedTypeId: VegetableType.ID?
    private var model = VegetableModel()
    var body: some View {
        
        NavigationSplitView{
            
            List{
                
                NavigationLink{
                    IntroductionView() //다른 뷰로 대체
                } label: {
                    Text("Before We Start")
                        .font(.system(.title2))
                        .bold()
                        .padding()
                }
                NavigationLink{
                    Text("What are you going to eat?")
                } label: {
                    Text("Let's Go To Grocery Store")
                        .font(.system(.title2))
                        .bold()
                        .padding()

                }
                NavigationLink{
                    Text("Choose the tool you want to use")
                } label: {
                    Text("Which Tool Are You Going To Use")
                        .font(.system(.title2))
                        .bold()
                        .padding()

                }
                NavigationLink{
                    Text("How long do you want to cook?")
                } label: {
                    Text("Tik Tok Tik Tok")
                        .font(.system(.title2))
                        .bold()
                        .padding()

                }
                NavigationLink{
                    Text("This is your own recipe!")
                } label: {
                    Text("Wrapping up")
                        .font(.system(.title2))
                        .bold()
                        .padding()

                }
            }
        } detail: {
                Text("Cook & Code")
                .font(.system(size:100))
            }
        }
    }
  /*
    var body: some View {
        NavigationSplitView {
            List(model.data, selection: $selectedTypeId) { type in
                HStack {
                    Image(type.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .cornerRadius(10)
                    Text(type.type)
                        .font(.system(.title2))
                        .bold()
                    
                }
            }
        } detail: {
            if let selectedTypeId,
               let selectedType = model.data.first(where: { $0.id == selectedTypeId }),
               let vegetables = selectedType.vegetables {
                List(vegetables) { vegetable in
                    HStack {
                        Image(vegetable.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                            .cornerRadius(10)
                        Text(vegetable.name)
                            .font(.system(.title3))
                            .bold()
                    }
                }
            } else {
                Text("Code & Cook")
                    .font(.system(.title))
                    .bold()
            }
        }
    }*/


    


//@available(iOS 16.0, *)
struct ContentView_Preview: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
    
}
