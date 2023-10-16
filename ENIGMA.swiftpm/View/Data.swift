//
//  data.swift
//  ENIGMA
//
//  Created by 김기영 on 2023/04/10.
//

import Foundation

//Making key plate
func arrayMaking(_ sampleStrings:String) -> [String] {
    Array(sampleStrings).map(String.init)
}
let passPlate = "💀ESOVPZJAYQUIRHXLNFTGKDCMWBesovpzjayquirhxlnftgkdcmwbESOVPZJAYQUIRHXLNFTGKDCMWBesovpzjayquirhxlnftgkdcmwb"
let passwordArray1 = arrayMaking(passPlate)

let alphabet =  "💀ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
let alphabetArray = arrayMaking(alphabet)

let emoji = "💀😀😃😄😁😆🥹😅😂😉🙃🙂😇😊☺️🥲🤣😘🥰😍😌😚😙😗😋🤯🥶😀😃😄😁😆🥹😅😂😉🙃🙂😇😊☺️🥲🤣😘🥰😍😌😚😙😗😋🤯🥶😀😃😄😁😆🥹😅😂😉🙃🙂😇😊☺️🥲🤣😘🥰😍😌😚😙😗😋🤯🥶😀😃😄😁😆🥹😅😂😉🙃🙂😇😊☺️🥲🤣😘🥰😍😌😚😙😗😋🤯🥶"
// let emojiArray = Array(emoji).map(String.init)
let emojiArray = arrayMaking(emoji)

var basicAlphabet =  "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

/*
struct PlateKey {
    var plateName:String = ""
    var plateMatch:[String] = []
    var id = UUID()
}

var plateKeyList = [
    PlateKey(plateName: "Sample", plateMatch: passwordArray1),
    PlateKey(plateName: "Emoji", plateMatch: emojiArray),
    PlateKey(plateName: "Default", plateMatch: alphabetArray)
]
    */
    


//dictionary of plate and array of key value
var plateDic: [String:[String]] =
[
    "defaultAlphabet":alphabetArray,
    "sampleRandom1":passwordArray1,
    "sampleEmoji":emojiArray
]
var plateList: [String] = plateDic.map{$0.0}
var displayedCryto:String = ""


 
