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
         /*   Rectangle()
                .foregroundColor(.gray)
                .frame(width: 330, height: 330) */
                
          Text("This is Cook&Code Recipe Book. This applicatioin is for students who want to study how to code with writing recipe book. Coding is very similar with cooking. In this application, you can learn how you to make 'Class' and 'function'")
                .bold()
                .frame(width:450)
                .font(.system(size: 30))
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
                .frame(width:500 ,height: 500)
                .foregroundColor(Color(hex: 0xF9F5EA))
          /*  Rectangle()
                .frame(width:330 ,height: 330)
                .foregroundColor(.gray) */
            Text("Let's See how it works!(Tap Here!)")
                .bold()
                .frame(width: 330)
                .font(.system(size:30))
                .onTapGesture {
                        sentenceGone1 = !sentenceGone1
                }
                .opacity(sentenceGone1 ? 0 : 1)
                .animation(.default, value: sentenceGone1)

            Text("In every steps, you are going to do every processes of cooking. After all processes, you are going to tap 'Convert to Code' Button.")
                .bold()
                .frame(width: 430)
                .font(.system(size:30))
                .lineSpacing(10)
                .opacity(sentenceGone1 ? 1 : 0)
                .animation(.default, value: sentenceGone1)
                .offset(y:UIScreen.height * -0.1  )
            
            Image(systemName: "arrow.down")
                .font(.system(size:40))
                .bold()
                .opacity(sentenceGone1 ? 1 : 0)
                .offset(y:sentenceGone1 ? UIScreen.height * 0.04: UIScreen.height * 0.03)
                .animation(.default.repeatForever().delay(1), value: sentenceGone1)
                
         /*   Text("After all processes, you are going to tap")
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
                .offset() */
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
            .animation(.default.delay(1.5), value: sentenceGone1)
            .offset(y:UIScreen.height * 0.1)
            
            ConvertingView()
                .opacity(convertAppear ? 1 : 0)
                .animation(.default, value: convertAppear)
            
            
        }
    }
}


struct ConvertingView: View{
    @State var imageHeight:CGFloat = UIScreen.height * -0.045
    var body: some View{
        ZStack{
            Rectangle()
                .frame(width:500 ,height: 500)
                .foregroundColor(Color(hex: 0xF9F5EA))
            
            Text("Like this!!")
                .font(.system(size:30))
                .bold()
                .offset(y:UIScreen.height * -0.15)
            Image(systemName: "frying.pan")
                .font(.system(size: 60))
                .offset(x:UIScreen.width * -0.15, y: imageHeight )
            Image(systemName: "arrow.right")
                .font(.system(size: 40))
                .offset(x:UIScreen.width * -0.01, y: imageHeight)
            
            Text("Cook()")
                .font(.system(size: 40))
                .bold()
                .offset(x:UIScreen.width * 0.14, y: imageHeight)
            Text("Let's start with buying ingredients from grocery store.                    Select 'Let's Go To Grocery Store' tab in sidebar")
                .font(.system(size: 30))
                .frame(width: 450)
                .offset(y:UIScreen.height * 0.11)
        }

        
        
        
    }
}


struct ManualBox1_Previews: PreviewProvider {
    static var previews: some View {
        ManualBox1()
            
    }
}



struct ManualBox2_Previews: PreviewProvider {
    static var previews: some View {
        ManualBox2()
            
    }
}


struct ConvertingView_Previews: PreviewProvider {
    static var previews: some View {
        ConvertingView()
            
    }
}
