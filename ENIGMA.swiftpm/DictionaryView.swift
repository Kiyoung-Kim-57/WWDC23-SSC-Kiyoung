//
//  DictionaryView.swift
//  ENIGMA
//
//  Created by 김기영 on 2023/04/17.
//

import SwiftUI

struct DictionaryView: View {
    func joinedArray(_ array:[String]) -> String {
        array[1...52].joined(separator: "")
    }
    
    var body: some View {
        ZStack{
            
            List{
                ForEach(Array(plateDic.keys), id: \.self){
                    keys in Text("\(keys) = \(joinedArray(plateDic[keys] ?? alphabetArray))")
                }
                
            }
        }
    }
}

struct DictionaryView_Previews: PreviewProvider {
    static var previews: some View {
        DictionaryView()
    }
}
