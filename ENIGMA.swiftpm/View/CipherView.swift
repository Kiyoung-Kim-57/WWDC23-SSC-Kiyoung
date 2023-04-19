//
//  CryptogramView.swift
//  ENIGMA
//
//  Created by 김기영 on 2023/04/10.
//

import SwiftUI


struct CipherView: View {
    
    @State var password: String = ""
    @State var cryptoWord:String = ""
    @State var numKey = 0 //Int.random(in: 1...52)
    @State var changedIntoNum:[Int] = [] //array that contains number of original text's character
    @State var changedIntoC:[String] = [] //숫자로바꾼 배열를 암호플레이트에 따라 바꾼 배열
    @State var keyPlate:[String] = []
    @State var selectedPlate:String = ""
    @State var showModalView = false
    
   // var plateList = ["defaultAlphabet","sampleRandom1","sampleEmoji"]
    
     func cipher(){
         numKey = Int.random(in: 0...52) //Change code randomly
         changedIntoC = []
         changedIntoNum = []
         keyPlate = plateDic[selectedPlate] ?? alphabetArray
         let passwordArray = Array(password).map(String.init)
        // var changedIntoNum:[Int] = []
         
         for value in passwordArray {
             changedIntoNum.append(alphabetArray.firstIndex(of: value) ?? 0)
         }
         
         for value in changedIntoNum {
             if value == 0 {
                 changedIntoC.append(keyPlate[0])
             }
             else{
                 changedIntoC.append(keyPlate[value+numKey])
             }
         }
         
         cryptoWord = changedIntoC.joined(separator: "")
         displayedCryto = cryptoWord
         
    }
    
    
    var body: some View {
        ZStack{
            Color.bgColor
                .ignoresSafeArea()
            
            //픽커로 키와 플레이트 선택
            VStack{
                VStack{
                    HStack{
                        Spacer().frame(width: UIScreen.width * 0.75)
                        Button{
                            showModalView.toggle()
                        } label: {
                            VStack{
                                Image("Lightbulb2")
                                
                                    //.font(.system(size: 90))
                                  //  .foregroundColor(.black)
                                Text("Touch here!")
                                    .foregroundColor(.black)
                            }
                        }
                        .sheet(isPresented: $showModalView){
                            CipherModalView()
                        }
                    }
                    
                    Button{
                        plateList = plateDic.map{$0.0}
                    } label: {
                        Text("Refresh the list")
                            
                            .foregroundColor(.black)
                            .frame(width: 150, height: 50)
                            .font(.system(size: 20))
                            
                    }
                    .background(Color.gray)
                    .cornerRadius(15)
                    
                    
                    Picker("choose rotor", selection: $selectedPlate){
                        ForEach(plateList, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.wheel)
                    .background(.gray)
                    .cornerRadius(15)
                    .padding()
                }
                Spacer().frame(height: UIScreen.height * 0.08)
                VStack{
                    Text(selectedPlate == "" ? "Present rotor is defaultAlphabet":"Present rotor is \(selectedPlate)")
                    TextField("Write a sentence", text: $password)
                        .bold()
                        .font(.system(size: 40))
                        .background(Color(.white))
                        .frame(width: UIScreen.width * 0.5)
                    Spacer().frame(height: UIScreen.height * 0.05)
                    //plateDic 활용
                    Button{
                        cipher()
                    } label: {
                        Text("Change")
                            .font(.system(size: 30))
                            .frame(width: 150, height: 50)
                            .foregroundColor(.black)
                            .background(Color.gray)
                            
                    }
                    .cornerRadius(15)
                    
                    Spacer().frame(height: UIScreen.height * 0.05)
                }
                Text("Changed Code is  \(cryptoWord) and Key is \(numKey)") //해독뷰 입력칸 placeholder로 넣기
                    .font(.system(size: 30))
                    .foregroundColor(.black)
                Spacer().frame(height: UIScreen.height * 0.1)
                
            }
            
                
           
            
            }
            
        }
    }



struct CipherView_Previews: PreviewProvider {
    static var previews: some View {
        CipherView()
    }
}
