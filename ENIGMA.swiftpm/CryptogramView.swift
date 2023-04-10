//
//  CryptogramView.swift
//  ENIGMA
//
//  Created by 김기영 on 2023/04/10.
//

import SwiftUI


struct CryptogramView: View {
    
    @State var password: String = ""
    @State var testing:String = ""
    @State var num = 0
    @State var changedIntoNum:[Int] = []
    @State var changedIntoC:[String] = []
    
    var body: some View {
        ZStack{
            TextField("Write anything, BUT IN UPPERCASE", text: $password)
                .bold()
                .font(.system(size: 40))
                .border(.black)
                .frame(width: 650)
                .offset(x: 20, y:-300)
                
            Button{
                changedIntoC = []
                changedIntoNum = []
                let passwordArray = Array(password).map(String.init)
               // var changedIntoNum:[Int] = []
                for value in passwordArray {
                  
                    changedIntoNum.append(alphabetArray.firstIndex(of: value) ?? 0)
                }
                
                for value in changedIntoNum {
                  
                    changedIntoC.append(emojiArray[value])
                }
                
                testing = changedIntoC.joined(separator: "")
                
            } label: {
                Text("Change")
            }
            
            Text("Changed Code is  \(testing)")
                .font(.system(size: 30))
                .offset(y:300)
            
            }
            
        }
    }



struct CryptogramView_Previews: PreviewProvider {
    static var previews: some View {
        CryptogramView()
    }
}
