# WWDC23studentchallenge

<Introduction>
It is recommended to run this app on portrait mode.<br/>
I mainly used SwiftUI. 
This application is for introducing basic cryptography with enigma device. Substitution cipher is basic cryptography. This cipher is easy to understand and also helpful to make interest in cryptography. I made sorted alphabet array and shuffled alphabet array to make cipher algorithm.
  <br/>First, the app change text into character array and character array into number array. Numbers in number array is going to be index numbers of shuffled array. So this app make cipher character array from shuffled array. And finally this app uses '.joined' to make it into word. And to prevent crashes due to characters that is not in alphabet array, I added 💀 emoji in the first index of arrays. If you type any characters that is not in arrays then you will get skeleton emoji. This app will provide you cipher text and number key. Number key sets start line of shuffle arrays(rotors).<br/>
Decipher process is just reverse sequence of cipher process. But you need to know rotor's name and number key to decipher. Rotors and number key will make another rotor array only for deciphering.
With that array, the app will run cipher process to decipher.
  <br/>You can also make your own rotors with this app. There is a rotor list dictionary in dataset. If you make your rotors in this app you can add them into the dictionary. Typing rotors' names is necessary and duplicated name is not allowed so the app will give you alert message when your rotor name is empty or duplicated. You can also check rotors list dictionary.
