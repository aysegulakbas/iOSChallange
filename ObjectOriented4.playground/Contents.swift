import UIKit
import Foundation

class Personel {
    func iseAlindi(){
        print("Personel mutlu")
    }
}

class Mudur:Personel {
    func iseAl(p:Personel) {
        p.iseAlindi()
    }
    func terfiEttir(p:Personel) {
        
    }
    
}

class Isci:Personel {
    
}

class Ogretmen:Personel {
    
}

var ogretmen = Ogretmen()
var isci:Personel = Isci()

let date = Date()
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "dd.MM.YYYY"
let dataText = dateFormatter.string(from: date)
print(dataText)

