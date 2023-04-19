//
//  CIpherModalView.swift
//  ENIGMA
//
//  Created by 김기영 on 2023/04/19.
//

import SwiftUI

struct CipherModalView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack{
            Image("CipherTutorial")
            Spacer().frame(height: UIScreen.height*0.1)
            Button{
                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Go back to cipher")
                    .foregroundColor(.black)
                    .background(Color.secondary)
                    .font(.system(size: 60))
                    .cornerRadius(10)
                    
            }
            
        }
    }
}

struct CipherModalView_Previews: PreviewProvider {
    static var previews: some View {
        CipherModalView()
    }
}
