import UIKit


// Not included no return Functions

func greeting() {
    let hello = "Hello Everyone!"
    print(hello)
}
greeting() // I called to greeting function. Just do procces.

//  Included return Functions

func greeting_() -> String {
    let hello = "Hello Everyone!"
    return hello
}

let result = greeting()
print(result)

// Parameter included funtions 5.22

func hello(name:String) {
    let rslt = "Name : \(name)"
    print(name)
}
hello(name: "John")

// eg1

func sum() -> Int {
    let summ = 30 + 40
    return summ
}
var rs = sum()

// eg2

func sum_(num1: Int , num2:Int) -> Int {
   let result1 = num1 + num2
    return result1
    
}
let hey = sum_(num1: 20, num2: 30)
print(hey)

// eg 3 access into Class to functions

class Operations{
    
    func summ_(num1:Int , num2: Int) {
        let result = num1 + num2
        print(result)
        
    }
    
    func ext(num1: Double, num2: Double) -> Double{
        let result = num1 - num2
        return result
    }

    func min(num1: Int, num2:Int) -> Int {
        let result = num1 * num2
        return result
    }
    
    func imp(num1: Int , num2: Int) -> Double {
        let rslt = Double(num1 / num2)
        return rslt
    }
}
var m = Operations()

m.ext(num1: 10.0, num2: 20.0)
m.min(num1: 30, num2: 10)
print(m.imp(num1: 22, num2: 12))
m.summ_(num1: 3, num2: 2)

// Overloading : Metotlarin asiri yuklenmesi ayni isimde birden fazla fonksiyonun bulunmasi
/* Isimler ayni fakat degiskenler farkli*/

class Accounting {
    func summ (num1: Int, num2: Int){
        print("Sum : \(num1 + num2)")
    }
    
    func summ (num1: Double, num2: Int){
        print("Sum : \(num1 + Double(num2))")
    }
    
    func summ (num1: Int, num2: Double){
        print("Sum : \(Double(num1) + num2)")
    }
    
    func summ (num1: Int, num2: Int, name:String){
        print("Sum is name \(name) : Result:  \(num1 + num2)")
    }
}

var a = Accounting()

a.summ(num1: 10, num2: 20)
a.summ(num1: 12, num2: 13, name: "Sum")

// Variadic Parameters
/* Variadic parametreler demek, birden fazla sayi ile ani islemi yapmak istedigimizde kullaniriz.*/

func sumVariadic(numbers:Int...) -> Int{
    var sum = 0
    for s in numbers {
        sum = sum + s
    }
    return sum
}

var v1 = sumVariadic(numbers: 1,2,3,4,5)
var v2 = sumVariadic(numbers: 17,256,45,6789,23)
print(v1)
print(v2)

// 58.video
