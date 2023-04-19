//
//  SwiftUIView.swift
//  
//
//  Created by 김기영 on 2023/04/19.
//

import SwiftUI

struct DecipherModalView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack{
            Image("DecipherTutorial")
            Button{
                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Go back to page")
                    .foregroundColor(.black)
                    .background(Color.secondary)
                    .font(.system(size: 60))
                    .cornerRadius(10)
            }
        }
        
    }
}

struct DecipherModalView_Previews: PreviewProvider {
    static var previews: some View {
        DecipherModalView()
    }
}
