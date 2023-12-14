import UIKit

class Bus {
    var capasite:Int?
    var from:String?
    var to:String?
    var nowPassengers:Int?
    
    func getPassengers(passengers:Int) {
        nowPassengers! += passengers
    }
    
    func sendPassengers(passengers:Int){
        nowPassengers! -= passengers
    }
    
    func getInfo() {
        print("Capasite : \(capasite!)")
        print("From : \(from!)")
        print("To : \(to!)")
        print("Now Passengers : \(nowPassengers!)")
    }
}

var kamilKoc = Bus()
kamilKoc.capasite = 50
kamilKoc.from = "Hamburg"
kamilKoc.to = "Berlin"
kamilKoc.nowPassengers  = 40

kamilKoc.getInfo()
kamilKoc.sendPassengers(passengers: 30)
kamilKoc.getInfo()
kamilKoc.getPassengers(passengers: 20)
if kamilKoc.nowPassengers! > 50 {
    print("Maximum capasite is 50. Unfortunately!")
}
else{
    kamilKoc.getInfo()
}

// LAZY

/* Depolama onceligi olarak ikinci plana atilir. Depolamada bir sikinti olursa ilk gozden cikarilcak degiskenler bunlardir silinebilirler.
 var yani variable olan degiskenlerden once kullanilir
 lazy olacak degiskenin baslangic degeri olmalidir. Bos yani nil bir degisken olamaz.*/

class Example {
    lazy var no = 39
}
var object = Example()
print(object.no)

// Account Feature

class Math {
    var x = 10
    var y = 20
    
    var sum:Int { // Burada sadece hesaplamak icin degisken gibi erisebildigimiz bir closure olusturduk gorevi iki sayiyi toplamak.
        
        get{
            return x + y
        }
    }
}
var obj = Math()


print(obj.sum) // closure a burada degisken gibi eristik aslinda fonksion gibi calisiyor.

//Wage account example

class Wage{
    
    var wage = 10000.0
    var bonus = 1.10
    
    var weeklyWageAccount:Double {
        
        get{ // get ile veriyi okudum
            
            return (wage * bonus) / 52
        }
        
        set (newWeeklyWage){ // set ile de veriyi guncelleyip degistirebilirim. Yeni maasi hesaplamak icin kullandim.
            self.wage = newWeeklyWage * 52
        }
    }
}

var w = Wage()

print(w.weeklyWageAccount)
w.weeklyWageAccount = 600
print(w.weeklyWageAccount)
