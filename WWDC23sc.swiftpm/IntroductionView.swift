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
            Color(.systemYellow)
                .ignoresSafeArea()
                .opacity(0.2)
            IntroView().id(theId)
            Button{
                self.theId += 1
            }label: {
                Text("Reset")
                    .bold()
                    .font(.system(size:30))
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.orange)
            .cornerRadius(20)
            .offset(x:350, y:-550)

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
                 .offset(y:-450)
            ManualBox1()
                .opacity(isAppear ? 1 : 0)
                .animation(.default, value: isAppear)
            Button{
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

            }
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(20)
            .opacity(isAppear ? 0 : 1)
            .animation(.default, value: isAppear)
            .offset(y:380)
            Button{
                isStart.toggle()
                isAppear.toggle()
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
            .offset(y:380)
        ManualBox2()
                .opacity(isStart ? 1 : 0)
                .animation(.default, value: isStart)
        }
    }
}



struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView()
    }
}
