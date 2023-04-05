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
                .frame(width:600 ,height: 650)
            Text("This is Cook&Code Recipe Book. This applicatioin is for students who want to study how to code with writing recipe book.                Coding is very similar with cooking.                                              In this application, you can learn how you to make 'Class' and 'function'")
                .frame(width:420)
                .font(.system(.title))
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
                .frame(width: 600, height: 600)
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
                .font(.system(size:30))
                .opacity(sentenceGone1 ? 1 : 0)
                .animation(.default, value: sentenceGone1)
                .offset(y:-170)
            Text("After all processes, you are going to tap")
                .bold()
                .frame(width: 310)
                .font(.system(size:30))
                .opacity(sentenceGone1 ? 1 : 0)
                .animation(.default.delay(1.5), value: sentenceGone1)
                .offset(x:-58 ,y:-80)
            Text("'Convert to Code' Button.")
                .bold()
                .frame(width: 360)
                .font(.system(size:30))
                .opacity(sentenceGone1 ? 1 : 0)
                .animation(.default.delay(2.5), value: sentenceGone1)
                .offset(x:-12,y:-3)
            Button{
                convertAppear.toggle()
            }label: {
                Text("Convert To Code")
                    .bold()
                    .font(.system(size:50))
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(20)
            .opacity(sentenceGone1 ? 1 : 0)
            .animation(.default.delay(3.5), value: sentenceGone1)
            .offset(y:200)
            
            ConvertingView()
                .opacity(convertAppear ? 1 : 0)
                .animation(.default, value: convertAppear)
            
            
        }
    }
}

struct ConvertingView: View{
    var body: some View{
        Rectangle()
            .frame(width: 600, height: 600)
            .foregroundColor(.gray)
            
        Text("Cook")
            .font(.system(size: 50))
            .bold()
            .offset(x:-180)
        Image(systemName: "arrow.right")
            .font(.system(size: 40))
        
        Text("Cook()")
            .font(.system(size: 50))
            .bold()
            .offset(x:180)
    }
}

struct ManualBox2_Previews: PreviewProvider {
    static var previews: some View {
        ManualBox2()
    }
}
