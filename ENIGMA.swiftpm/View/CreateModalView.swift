//
//  CreateModalView.swift
//  ENIGMA
//
//  Created by 김기영 on 2023/04/19.
//

import SwiftUI

struct CreateModalView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack{
            Image("CreateTutorial")
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

struct CreateModalView_Previews: PreviewProvider {
    static var previews: some View {
        CreateModalView()
    }
}
