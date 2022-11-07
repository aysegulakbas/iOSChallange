import UIKit


// FİBONACCI
var a = 1
var b = 1
var c = 0

print(a)
print(b)
for _ in 1...10 {
    c = a + b
    a = b
    b = c
    print(c)
}
 // Verilen Metin içinden rakam toplamlarını bul

var str = "thjdjdkdll56325420365kkfjffff4589654fjfjf"
var strArray = Array(str)

var sum = 0
for i in strArray {
    
    if let b = i.wholeNumberValue {
        sum += b
    }
}
print(sum)


//func random(courierList:[Int]){
  //  let courierList = arc4random_uniform(100)
//}

let randomMotorcycleListCount = Int.random(in: 8...100)
let motorcycleListSerialNumberRange = Int.random(in: 1000...9999)
let motorcycleList = (0..<randomMotorcycleListCount).map{ _ in Int.random(in: 0...motorcycleListSerialNumberRange) }.sorted()
        print(motorcycleList)

class Kisiler {
    var ad: String?
    var yas: Int?
    
    init(){
         // bos init || constructor
    }
    
    init(ad:String,yas:Int){
        self.ad = ad
        self.yas = yas
    }
}
let kisi1 = Kisiler()
kisi1.ad = "Ahmet"
kisi1.yas = 18
print(kisi1.ad!)
print(kisi1.yas!)

let kisi2 = Kisiler(ad: "Mehmet", yas: 30)
print(kisi2.ad!)
print(kisi2.yas!)

// Composition

class People{
    var name:String?
    var age:Int?
    var adress:Adress?
    
    init(name:String,age:Int,adress:Adress){
        
    }
}
class Adress{
    var city:String?
    var cities:String?
    
    init (city:String,cities:String){
        self.city = city
        self.cities = cities
    }
}

let adress = Adress(city: "Bursa", cities: "Osmangazi")
let person = People(name: "Ahmet", age: 20, adress: adress)

print("Person name is \(person.name!)")
print("Person age is \(person.age!)")
print("Person adress is \(person.adress!.city!)")
print("Person name is \(person.adress!.cities!)")
