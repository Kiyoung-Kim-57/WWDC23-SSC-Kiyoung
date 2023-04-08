//
//  FirstLink.swift
//  WWDC23sc
//
//  Created by 김기영 on 2023/04/05.
//

import SwiftUI
struct IntroductionView: View {
    @State var theId = 0
    var body: some View{
        ZStack{
            Color(hex: 0xF9F5EA)
                .ignoresSafeArea()
                
            IntroView().id(theId)
            Button{
                self.theId += 1
            }label: {
                Text("Reset")
                    .bold()
                    .font(.system(size:20))
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.orange)
            .cornerRadius(20)
            .offset(x:220, y:-500)
            //   .offset(x:UIScreen.width * 0.32, y:UIScreen.height * -0.32)

        }
            }
}

struct IntroView: View {
    @State var isAppear = false
    @State var isStart = false
    @State var buttonCount: CGFloat = .zero
    var body: some View {
        ZStack{
            Text("Welcome to Cook&Code")
                .font(.system(size:50))
                .offset(y:UIScreen.height * -0.28)
            ManualBox1()
                .opacity(isAppear ? 1 : 0)
                .animation(.default, value: isAppear)
            Button
            {
                isAppear.toggle()
            }label: {
                Text("Touch this Button!")
                    .bold()
                    .font(.system(size:30))
            }
            /*{
                if buttonCount == 0 {
                    isAppear.toggle()
                    buttonCount += 1
                }
                else{
                    buttonCount += 1
                }
                
            } label: {
                if buttonCount == 0 {
                    Text("Touch this Button!")
                        .bold()
                        .font(.system(size:30))
                }
                else {
                    Text("Tap the sentence above!")
                        .bold()
                        .font(.system(size:30))
                }
                
            } */
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(20)
            .opacity(isAppear ? 0 : 1)
            .animation(.default, value: isAppear)
            .offset(y:UIScreen.height * 0.25)
            
            Button{
                isStart.toggle()
               
            } label: {
                Text("Let's Start!")
                    .bold()
                    .font(.system(size:30))
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(20)
            .opacity(isAppear ? 1 : 0)
            .animation(.default, value: isAppear)
            .offset(y:UIScreen.height * 0.25)
        
            Rectangle()
                .foregroundColor(Color(hex: 0xF9F5EA))
                .frame(width: 300 , height: 150)
                .opacity(isStart ? 1 : 0)
                .animation(.default, value: isStart)
                .offset(y:UIScreen.height * 0.25)
                
                
            ManualBox2()
                .opacity(isStart ? 1 : 0)
                .animation(.default, value: isStart)
        }
    }
    
    
    struct IntroductionView2_Previews: PreviewProvider {
        static var previews: some View {
            IntroductionView()
            
        }
    }
    
    
    struct IntroductionView_Previews: PreviewProvider {
        static var previews: some View {
            IntroductionView()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
