//
//  StartView.swift
//  ENIGMA
//
//  Created by 김기영 on 2023/04/19.
//

import SwiftUI

struct StartView: View {
    @State var showContentModal = false
    var body: some View {
        ZStack{
            Color.bgColor
                .ignoresSafeArea()
            VStack{
                Spacer().frame(height: UIScreen.height * 0.08)
                HStack{
                    Spacer().frame(width: UIScreen.width * 0.7)
                    Button{
                        showContentModal.toggle()
                    } label: {
                        VStack{
                            Image("Lightbulb2")
                                .foregroundColor(.black)
                                .font(.system(size: 90))
                            Text("Touch me")
                                .foregroundColor(.black)
                        }
                    }
                    .sheet(isPresented: $showContentModal){
                        ContentModalView()
                    }
                }
                Spacer().frame(height: UIScreen.height * 0.01)
                Image("Title")
               /* Text("Simple Enigma")
                    .font(.system(size: 70))
                    .bold() */
                Spacer().frame(height: UIScreen.height * 0.1)
                Image("Enigma")
                    .shadow(radius: 30)
                Spacer().frame(height: UIScreen.height * 0.2)
            }
        }
    }
}
struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
