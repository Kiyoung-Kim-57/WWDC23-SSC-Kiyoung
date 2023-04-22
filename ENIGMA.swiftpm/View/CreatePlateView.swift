//
//  CreatePlateView.swift
//  ENIGMA
//
//  Created by 김기영 on 2023/04/17.
//

import SwiftUI

struct CreatePlateView: View {
    @State var plateName:String = ""
    @State var shuffledAlphabetArray:[String] = arrayMaking(basicAlphabet)
    @State var shuffledAlphabetString:String = ""
    @State var displayedString:String = basicAlphabet
    @State var creatingString:String = ""
    @State var creatingArray:[String] = []
    @State var showingAlert = false
    @State var showingSuccess = false
    @State var showModalView = false
    var body: some View {
        ZStack{
            Color.bgColor
                .ignoresSafeArea()
            VStack{
                
                Button{
                    showModalView.toggle()
                } label: {
                    HStack{
                        Spacer().frame(width: UIScreen.width * 0.55)
                        VStack{
                            Image("Lightbulb2")
                                .font(.system(size: 90))
                                .foregroundColor(.black)
                            Text("Touch here!")
                                .foregroundColor(.black)
                        }
                    }
                }
                .sheet(isPresented: $showModalView){
                    CreateModalView()}
                
               // Text("Make Random Key Rotors")
                 //   .font(.system(size:50))
                Image("MakeTitle")
                  Image("Keyboard")
                TextField("Rotor Name", text: $plateName)
                        .bold()
                        .font(.system(size: 40))
                        .background(Color(.white))
                        .frame(width: UIScreen.width * 0.5)
                        .multilineTextAlignment(TextAlignment.center)
                    Spacer().frame(height: UIScreen.height * 0.04)
                    
                    Text("<Key Rotor's array>")
                        .bold()
                        .font(.system(size: 25))
                    
                    Spacer().frame(height: UIScreen.height * 0.01)
                    
                    Text("\(displayedString)")
                        .font(.system(size:25))
                    
                    Spacer().frame(height: UIScreen.height * 0.05)
                    HStack{
                        Button{
                            shuffledAlphabetArray.shuffle()
                            shuffledAlphabetString = shuffledAlphabetArray.joined(separator: "")
                            displayedString = shuffledAlphabetString
                            
                        } label: {
                            Text("Shuffle")
                                .frame(width: UIScreen.width*0.1, height: UIScreen.height*0.06)
                                .foregroundColor(.white)
                                .background(Color.boxColor)
                                .cornerRadius(5)
                        } //button shuffle end
                        
                        Button{
                            displayedString = basicAlphabet
                        } label: {
                            Text("Reset")
                                .frame(width: UIScreen.width*0.1, height: UIScreen.height*0.06)
                                .foregroundColor(.white)
                                .background(Color.boxColor)
                                .cornerRadius(5)
                        }
                        Button{
                            if plateName == "" {
                                showingAlert = true
                            }
                            else if plateDic.keys.contains(plateName) {
                                showingAlert = true
                            }
                            else{
                                showingSuccess = true
                                creatingString = "💀\(displayedString)\(displayedString)"
                                creatingArray = arrayMaking(creatingString)
                                plateDic[plateName] = creatingArray
                            }
                        } label: {
                            Text("Add")
                                .frame(width: UIScreen.width*0.1, height: UIScreen.height*0.06)
                                .foregroundColor(.white)
                                .background(Color.boxColor)
                                .cornerRadius(5)
                        }
                        .alert("empty rotor name and duplicated rotor names are not allowed", isPresented: $showingAlert){
                            Button("retry", role:.cancel){}
                        }
                        .alert("Success", isPresented: $showingSuccess){
                            Button("Ok", role: .cancel){}
                        }
                        
                    }
                    
                    
                }
            }
        }
    
        struct CreatePlateView_Previews: PreviewProvider {
            static var previews: some View {
                CreatePlateView()
            }
        }
    }

