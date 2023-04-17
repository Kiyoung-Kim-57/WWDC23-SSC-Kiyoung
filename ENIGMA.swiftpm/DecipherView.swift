//
//  DecipherView.swift
//  ENIGMA
//
//  Created by 김기영 on 2023/04/12.
//

import SwiftUI

struct DecipherView: View {
    @State var password: String = ""
    @State var cryptoWord:String = ""
    @State var numKey = 0 //Int.random(in: 1...52)
    @State var changedIntoNum:[Int] = [] //array that contains number of original text's character
    @State var changedIntoC:[String] = [] //숫자로바꾼 배열를 암호플레이트에 따라 바꾼 배열
    @State var decipherPlate:[String] = []
    @State var keyPlate:[String] = []
    @State var selectedPlate:String = ""
    @State var selectedKey:Int = 0
    
  //  var plateList = ["defaultAlphabet","sampleRandom1","sampleEmoji"]
    
     func decipher(){
         numKey = selectedKey
         changedIntoC = []
         changedIntoNum = []
         keyPlate = plateDic[selectedPlate] ?? alphabetArray
         decipherPlate = Array(keyPlate[0+numKey...51+numKey])
         
         if displayedCryto == ""
         {
             password = password
         } else {
             password = displayedCryto
         }
         
         
         let passwordArray = Array(password).map(String.init)
        // var changedIntoNum:[Int] = []
         
         for value in passwordArray {
             changedIntoNum.append(decipherPlate.firstIndex(of: value) ?? 0)
         }
         
         for value in changedIntoNum {
             if value == 0 {
                 changedIntoC.append(alphabetArray[0])
             }
             else{
                 changedIntoC.append(alphabetArray[value])
             }
         }
         
         cryptoWord = changedIntoC.joined(separator: "")
    }
    
    
    var body: some View {
        ZStack{
            Color.bgColor
                .ignoresSafeArea()
            
            //픽커로 키와 플레이트 선택
            Picker("choose plate", selection: $selectedPlate){
                ForEach(plateList, id: \.self) {
                  Text($0)
                }
            }
            .pickerStyle(.wheel)
            .frame(width: 300)
                .background(.secondary)
                .cornerRadius(15)
                .padding()
                .offset(x:UIScreen.width * -0.2,y:-UIScreen.height * 0.25)

            Picker("choose plate", selection: $selectedKey){
                ForEach(0 ... 52 , id: \.self) {
                  Text("\($0)")
                }
            }
            .pickerStyle(.wheel)
            .frame(width: 300)
                .background(.secondary)
                .cornerRadius(15)
                .padding()
                .offset(x:UIScreen.width * 0.2,y:-UIScreen.height * 0.25)
            
            
            if displayedCryto == "" {
                TextField("Write ciphered sentences", text: $password)
                    .bold()
                    .font(.system(size: 40))
                    .background(Color(.white))
                    .frame(width: 650)
                    .offset(x: 20, y:-100)
            }
            else
            {
                TextField("\(displayedCryto)", text: $password)
                    .bold()
                    .font(.system(size: 40))
                    .background(Color(.white))
                    .frame(width: 650)
                    .offset(x: 20, y:-100)
            }
            //plateDic 활용
            Button{
                decipher()
            } label: {
                    Text("Decipher")
                        .foregroundColor(.black)
                
                
                    
            }
            
            Text("Changed Code is  \(cryptoWord)") //해독뷰 입력칸 placeholder로 넣기
                .font(.system(size: 30))
                .offset(y:300)
            
            }
            
        }
    }


struct DecipherView_Previews: PreviewProvider {
    static var previews: some View {
        DecipherView()
    }
}
