import UIKit

var str = "Hello, Playground"
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
    print("Final option this is Kerem." ) }


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

//Alan hesap

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
}


// ****** Collections Array - Set - Dictionary *******
// Array index no var   , Set veriyi kariisk kaydeder.   , Dictionary veriler key -values iliskisi vae

// Array ayni tur verileri tutar index no  0 dan baslar.

var array1 = [Int]() // create empty array

var fruits:[String] = ["Strawberry","Banana","Apple","Kiwi"]

fruits.append("Cherry")
print(fruits)

fruits += ["hey"]
print(fruits)
fruits[2] = "pink banana"
print(fruits)


// Array Iterating - Data pull with loops

for fruit in fruits {
    print(fruit)
}

for (index,fruitt) in fruits.enumerated(){
    print("\(index). meyve \(fruitt) dir.")
}

fruits.insert("Orange", at: 2)
print(fruits)

fruits.reverse()
fruits.isEmpty
fruits.count
fruits.first
fruits.last
fruits.contains("Carrot")
fruits.sort()

// Array map filter / Search operations

var numbers123 = [1,2,3,4,5,6,7,8,9,10]

var result12 = numbers123.filter({$0>8})
print(result12)
var result123 = numbers123.filter({$0>3 && $0<7})
print(result123)


// Array Example Avarage Account

var array2 = [30,40,70,100,50,80,90,50,70,40]
var rslt = 0
for i in array2 {
    rslt += i
}
rslt = rslt / array2.count
print(rslt)

// Array example change contain

for (index,i) in numbers123.enumerated() {
    let rslt1 = i * 5
    numbers123[index] = rslt1
}
print(numbers123)


// Array Example Find Singles and Doubles Arrays

var singles = [Int]()
var doubles = [Int]()

for i in numbers123 {
    if i % 2 == 0 {
        doubles.append(i)
    }
    else {
        singles.append(i)
    }
}
print(singles)
print(doubles)

// Array Lessons - Score Applications

var lessons = [String]()
var scores = [Int]()

lessons.append("history")
scores.append(20)

lessons.append("phy")
scores.append(80)

lessons.append("math")
scores.append(100)

lessons.append("bio")
scores.append(40)

lessons.append("che")
scores.append(60)

var total = 0

for i in 0...(scores.count - 1) {
    print("\(lessons[i]) : \(scores[i])")
    total += scores[i]
}
print("*********************")
print("Ortalama : \(total/lessons.count)")

// Array Example Search Name


var names123 = ["John","Denny","Clara","Rendy"]
var nm23 = "Perl"

for i in names123 {
    
    if i == nm23 {
        print("Thats true because OK.")
        break
    }
    else{
        print("No.")
        break
    }
}

// Set operations

var k = Set <String>()
k.insert("istanbul")
k.insert("tekirdag")


// Dictionary Structure

var dic1 = [Int:String]()

var dict2 = [3.14:"pi",2.71:"e"]

var states = [54:"Sakarya",35:"Izmir",34:"Istanbul"]
states[60] = "Tokat"
states[41] = "Kocaeli"
print(states)

states[35] = "New Izmir"
print(states)

for (key,value) in states {
    
    print("\(key) : \(value).")
}

states.removeValue(forKey: 35)
print(states)
states.isEmpty
states.reversed()
states.count
states.first

// Dictionary operations

var lessons1:[String] = ["Che","Math","Phy"]
var scores1:[Int] = [20,80,90]

var lessonsScores = Dictionary(uniqueKeysWithValues: zip(lessons1,scores1))
print(lessonsScores)

var prodPrice = ["Book":75.19,"Pencil":59.99,"Watch":178.89]
var prices = [Double](prodPrice.values)
var products = [String](prodPrice.keys)
print(products)
print(prices)

// Dictionary Filters

var school:[Int:String] = [154:"Ahmet",67:"Mehmet",871:"Zeynep",45:"Ahmet"]
var rsl1 = school.filter({$0.key>70})
var rsl2 = school.filter({$0.value == "Ahmet"})
print(rsl1)
print(rsl2)




