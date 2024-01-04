import UIKit

// Enum Struct**

enum Colors {
    case Black
    case White
}


var color = Colors.White

switch color {
case .Black:
    print("#FFFFFF")
case .White:
    print("#000000")
}

// Eg: 2

enum Hairs {
    case Straight
    case Curly
}

var hair = Hairs.Straight

switch hair {
case .Straight:
    print("very long hairs")
case .Curly:
    print("very short hairs")
}

// Composition Struct and Scenario


class Categories {
    
    var category_id:Int?
    var category_name:String?
    
    init(category_id: Int, category_name: String) {
        self.category_id = category_id
        self.category_name = category_name
    }
}


class Directors {
    var director_id:Int?
    var director_name:String?
    
    init(director_id:Int,director_name:String) {
        self.director_id = director_id
        self.director_name = director_name
 
    }
}

class Movies {
    
    var movie_id:Int?
    var movie_name:String?
    var movie_year:Int?
    var category :Categories?
    var director:Directors?
    
    init(movie_id:Int, movie_name:String, movie_year:Int, category:Categories, director:Directors) {
        
        self.movie_id = movie_id
        self.movie_name = movie_name
        self.movie_year = movie_year
        self.category = category
        self.director = director
     
    }
}

var c1 = Categories(category_id: 1, category_name: "Dram")
var c2 = Categories(category_id: 2, category_name: "Romantic")
var c3 = Categories(category_id: 3, category_name: "Science")

var d1 = Directors(director_id: 1, director_name: "Quantine Tarantino")
var d2 = Directors(director_id: 2, director_name: "Chistopher Nolan")
var d3 = Directors(director_id: 3, director_name: "Nuri Bilge Ceylan")

var m1 = Movies(movie_id: 1, movie_name: "Batman", movie_year: 1999, category: c3, director: d2)
var m2 = Movies(movie_id: 2, movie_name: "Spiderman", movie_year: 2005, category: c1, director: d1)
var m3 = Movies(movie_id: 3, movie_name: "Love Story", movie_year: 1887, category: c2, director: d3)

print("****** MOVIE INFORMATIONS ******")
print("Movie id: \(m1.movie_id!)")
print("Movie Name: \(m1.movie_name!)")
print("Movie Year: \(m1.movie_year!)")
print("Category id : \(m1.category!.category_id!)")
print("Director id : \(m1.director!.director_id!)")

// Inheritance - Sceneraio

class Vehicle {
    
    var color:String?
    var gear:String?
    
    init(color: String, gear: String) {
        self.color = color
        self.gear = gear
    }
    
}

class Car:Vehicle {
    var bodyType:String?
    
    init(bodyType:String,color: String, gear: String) {
        self.bodyType = bodyType
        super.init(color: color, gear: gear)
    }
}

class Nissan:Car {
    var model:Int?
    
    init(model:Int,bodyType:String,color: String, gear: String) {
        self.model = model
        super.init(bodyType: bodyType, color: color, gear: gear)
    }
    
    
}

var n1 = Nissan(model: 2024, bodyType: "Hascback", color: "Black", gear: "Auto")
var v1 = Vehicle(color: "Red", gear: "Manuel")
var n2 = Car(bodyType: "Hascback", color: "Blue", gear: "Auto")

print("***** Nissan Info *****")
print("Nissan Model Year: \(n1.model!)")
print("Nissan Body Type: \(n1.bodyType!) ")
print("Nissan Color : \(n1.color!)")
print("Nissan Gear Type: \(n1.gear!)")
print("   ")

print("**** Vehicle Info ****")
print("Vehicle Color: \(v1.color!)")
print("Vehicle Gear Type: \(v1.gear!)")
print("   ")

print("**** Car Info ****")
print("Car Body Type: \(n2.bodyType!)")
print("Car Color: \(n2.color!)")
print("Car Gear: \(n2.gear!)")

// Inheritance Scenario 2


class Home {
    var windowCount:Int?
    
    init(windowCount:Int) {
        self.windowCount = windowCount
    }
}

class Palace:Home {
    var towerCount:Int?
    
    init(towerCount:Int,windowCount:Int) {
        self.towerCount = towerCount
        super.init(windowCount: windowCount)
    }
}

class Villa:Palace {
    
    var isThereGarage:Bool?
    
    init(isThereGarage:Bool,towerCount:Int,windowCount:Int) {
        self.isThereGarage = isThereGarage
        super.init(towerCount: towerCount, windowCount: windowCount)
    }
}

var h1 = Home(windowCount: 5)
var p1 = Palace(towerCount: 3, windowCount: h1.windowCount!)
var vil1 = Villa(isThereGarage: true, towerCount: p1.towerCount!, windowCount: h1.windowCount!)

print("Home window count: \(h1.windowCount!)")
print("Palace Window Count: \(p1.windowCount!)")
print("Villa tower Count: \(vil1.towerCount!)")
print("Villa Window Count: \(vil1.windowCount!)")

// Override

/* Ust sinifa ait metotlarin fonksiyonlarin subclasslar tarafindan tekrar tekrar kullanilmasidir. */

class Animal {
    
    func getVoice() {
        print("No voice.")
    }
}

class Ml:Animal {
    
    override func getVoice() { // did override
        print("Yes Voice.")
    }
}

class Cat:Ml{
    override func getVoice() {
        print("Miaw Miaw.")
    }
}

class Dog:Animal {
    override func getVoice() {
        print("Hav Hav.")
    }
}


