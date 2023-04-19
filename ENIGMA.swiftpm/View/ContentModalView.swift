//
//  ContentModalView.swift
//  ENIGMA
//
//  Created by 김기영 on 2023/04/18.
//

import SwiftUI

struct ContentModalView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Button{
                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Go back to cipher")
            }
        }
    }
}

struct ContentModalView_Previews: PreviewProvider {
    static var previews: some View {
        ContentModalView()
    }
}
