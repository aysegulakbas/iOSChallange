import UIKit

var greeting = "Hello, playground"


struct Product {
    var name:String?
    var price:Double?
}

class Car {
    var color:String?
    var capasite:Int?
}

var laptop = Product()
var bmw = Car()

laptop.name = "Legion"
laptop.price = 20.999

if let tempName = laptop.name {
    print(tempName)
}
else{
    print("The included nil value.")
}

if let tempPrice = laptop.price {
    print(tempPrice)
}
else{
    print("The included nil value.")
}

bmw.color = "Red"
bmw.capasite = 900

print(bmw.color!)
print(bmw.capasite!)
