# WWDC23-Student Challenge[Accepted⭐️]

<Introduction>
It is recommended to run this app on portrait mode.<br/>
I mainly used SwiftUI. 
This application is for introducing basic cryptography with enigma device. Substitution cipher is basic cryptography. This cipher is easy to understand and also helpful to make interest in cryptography. I made sorted alphabet array and shuffled alphabet array to make cipher algorithm.
  <br/>First, the app change text into character array and character array into number array. Numbers in number array is going to be index numbers of shuffled array. So this app make cipher character array from shuffled array. And finally this app uses '.joined' to make it into word. And to prevent crashes due to characters that is not in alphabet array, I added 💀 emoji in the first index of arrays. If you type any characters that is not in arrays then you will get skeleton emoji. This app will provide you cipher text and number key. Number key sets start line of shuffle arrays(rotors).<br/>
Decipher process is just reverse sequence of cipher process. But you need to know rotor's name and number key to decipher. Rotors and number key will make another rotor array only for deciphering.
With that array, the app will run cipher process to decipher.
  <br/>You can also make your own rotors with this app. There is a rotor list dictionary in dataset. If you make your rotors in this app you can add them into the dictionary. Typing rotors' names is necessary and duplicated name is not allowed so the app will give you alert message when your rotor name is empty or duplicated. You can also check rotors list dictionary.
<br/><br/>
2차 세계대전 당시 사용됐던 암호제작기인 에니그마를 단순화해서 고전 치환암호의 개념을 배우는 앱입니다.<br/>
제공된 기본 암호판으로 원하는 문자열을 암호문으로 바꿀 수 있고 해독할 수 있는 Key가 숫자로 제공됩니다. 만들어진 암호문은 해독탭에서 암호문과 Key를 입력하면 평문으로 해독할 수 있습니다. 제공된 암호판 외에도 직접 암호판을 랜덤 문자열로 만들 수 있는 탭도 추가했습니다. 추가된 암호판은 별도의 탭에서 확인할 수 있습니다.<br/>




