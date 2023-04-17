//
//  CreatePlateView.swift
//  ENIGMA
//
//  Created by 김기영 on 2023/04/17.
//

import SwiftUI

struct CreatePlateView: View {
    @State var shuffledAlphabetArray:[String] = arrayMaking(basicAlphabet)
    @State var shuffledAlphabetString:String = ""
    @State var displayedString:String = basicAlphabet
    var body: some View {
        ZStack{
            Color.bgColor
                .ignoresSafeArea()
            VStack{
                Text("\(displayedString)")
                Spacer().frame(height: UIScreen.height * 0.03)
                Button{
                    shuffledAlphabetArray.shuffle()
                    shuffledAlphabetString = shuffledAlphabetArray.joined(separator: "")
                    displayedString = shuffledAlphabetString
                    
                } label: {
                    Text("Shuffle")
                        .foregroundColor(.black)
                        .background(Color.secondary)
                        .cornerRadius(5)
                } //button shuffle end
                Spacer().frame(height: UIScreen.height * 0.01)
                Button{
                    displayedString = basicAlphabet
                } label: {
                    Text("Reset")
                        .foregroundColor(.black)
                        .background(Color.secondary)
                        .cornerRadius(5)
                }//button reset end
                
            }
                    }

    }
}

struct CreatePlateView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePlateView()
    }
}
