import UIKit

/* var str = "Hello, Playground"
var myNumbero = 5*4
10*5

//String Degiskenler

var userName = "James"
userName.append("o")
userName.lowercased ()
userName.uppercased()

//Integer & Double

//Integer
let useAge = 50
let myNumber = 4
useAge / myNumber

//Double
let userAgeD = 50.0
let myNumber_ = 4.0

userAgeD / myNumber_

// boolean
var myBooelan = false
myBooelan = true

//Onden degisken tipini belirlemek
var myString:String = "hey"
let anotherNumber : Int = Int(10.0) // double i Int e cevirdim.
 
// If Else

var A = 10
var B = 20

A == B ? print("A B ye esittir") : print("A B ye esit degildir") // Ternary conditinal

if (A==B) {
    print("A esit B ye")
} else{
    print("A B ye esit degildir.")
}

// If else - else if - else

let name_ = "Kerem"
if name_ == "Ahmet" {
    print("This is Ahmet")
} else if name_ == ("Mehmet") {
    print("This is Mehmet")
} else {
    print("Final option this is Kerem." ) } */


// Plural Condition

var username:String = "aysegul"
var password:Int = 1234

if username == "aysegul" && password == 1234 {
    print("Successfully login!")
} else if username == "aysegul" && password != 1234 {
    print("Password is wrong! Please try again.")
} else if username != "aysegul" && password == 1234 {
    print("Username is wrong! Please try again.")
}else {
    print("Username and Password are wrong! Please try again.")
}

/*// Alan hesap

let option1 = "Cember Alani"
let option2 = "Diktorgen Alani"
let option3 = "Kare Alani"

var choosen = option2
print("\(option1) : ")
print("\(option2) : ")
print("\(option3) : ")

let x:Int = 5
let y:Int = 4
let const:Double = 3.14
let r:Int = 2

if  (choosen == option1) {
    print("You are selected : \(option1)")
    var result1 = const * Double(r) * Double(r)
    print("\(option1) : \(result1)")
} else if (choosen == option2) {
    print("You are selected : \(option2)")
    var result2 = x * y
    print("\(option2) : \(result2)")
} else {
    print("You are selected : \(option3)")
    var result3 = x * x
    print("\(option3) : \(result3)")
}


// Switch Case Structure

var day: Int = 5

switch day {
case 1 : print("Monday")
case 2 : print("Tuesday")
case 3 : print("Wednesday")
case 4 : print("Thursday")
case 5 : print("Friday")
case 6 : print("Saturday")
case 7 : print("Sunday")
default:
    print("There isnt a day")
}

// for - while - for in

var nm = "Ahmet"

for i in 1...5 {
    print("\(i). \(nm)")
}

var nm2 = "Aysegul"
var chCount = nm2.count

for i in 1...chCount {
    print("\(i). \(nm2)")
}


var data = 10

while data > 0 {
    print("\(data). data")
    data = data - 1
}

// Break - Continue

for i in 1...5 {
    if (i == 3) {
        break
    }
    print("\(i). loop") // loop was break.
}

for i in 1...5 {
    if (i == 3){
        continue
    }
    print("\(i). loop") // loop was pass thirt loop.
}


// Optinal - Binding

var str1:String?

str1 = "Hello"

if let temp = str1 {
    print( "\(temp)")
}
else{
    print("str included nil values.")
} */



