//
//  ManualBox.swift
//  WWDC23sc
//
//  Created by 김기영 on 2023/04/05.
//

import SwiftUI

struct ManualBox1: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .frame(width:UIScreen.width * 0.45 ,height: UIScreen.height * 0.3)
                
            Text("This is Cook&Code Recipe Book. This applicatioin is for students who want to study how to code with writing recipe book.                            Coding is very similar with cooking.                                                                  In this application, you can learn how you to make 'Class' and 'function'")
                
                .frame(width:UIScreen.width * 0.4)
                .font(.system(size: 20))
                .lineSpacing(10)

        }
            }
}

struct ManualBox2: View {
    @State var sentenceGone1 = false
    @State var convertAppear = false
    var body: some View{
        ZStack{
            Rectangle()
                .frame(width:UIScreen.width * 0.45 ,height: UIScreen.height * 0.3)
                .foregroundColor(.gray)
            Text("Let's See how it works!")
                .bold()
                .font(.system(size:30))
                .onTapGesture {
                        sentenceGone1 = !sentenceGone1
                }
                .opacity(sentenceGone1 ? 0 : 1)
                .animation(.default, value: sentenceGone1)

            Text("In every steps, you are going to do every processes of cooking")
                .bold()
                .frame(width: 380)
                .font(.system(size:18))
                .opacity(sentenceGone1 ? 1 : 0)
                .animation(.default, value: sentenceGone1)
                .offset(y:UIScreen.height * -0.1  )
            Text("After all processes, you are going to tap")
                .bold()
                .frame(width: 310)
                .font(.system(size:18))
                .opacity(sentenceGone1 ? 1 : 0)
                .animation(.default.delay(1.5), value: sentenceGone1)
                .offset(x:UIScreen.width * -0.036,y:UIScreen.height * -0.05)
            Text("'Convert to Code' Button.")
                .bold()
                .frame(width: 360)
                .font(.system(size:18))
                .opacity(sentenceGone1 ? 1 : 0)
                .animation(.default.delay(2.5), value: sentenceGone1)
                .offset()
            Button{
                convertAppear.toggle()
            }label: {
                Text("Convert To Code")
                    .bold()
                    .font(.system(size:30))
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(20)
            .opacity(sentenceGone1 ? 1 : 0)
            .animation(.default.delay(3.5), value: sentenceGone1)
            .offset(y:UIScreen.height * 0.1)
            
            ConvertingView()
                .opacity(convertAppear ? 1 : 0)
                .animation(.default, value: convertAppear)
            
            
        }
    }
}

struct ConvertingView: View{
    var body: some View{
        Rectangle()
            .frame(width:UIScreen.width * 0.45 ,height: UIScreen.height * 0.3)
            .foregroundColor(.gray)
            
        Text("Cook")
            .font(.system(size: 40))
            .bold()
            .offset(x:UIScreen.width * -0.15)
        Image(systemName: "arrow.right")
            .font(.system(size: 40))
        
        Text("Cook()")
            .font(.system(size: 40))
            .bold()
            .offset(x:UIScreen.width * 0.14)
    }
}

struct ManualBox2_Previews: PreviewProvider {
    static var previews: some View {
        ManualBox2()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

