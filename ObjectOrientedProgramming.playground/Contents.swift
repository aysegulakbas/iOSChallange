import UIKit

// Object oriented

struct Urun{
    var ad:String?
    var fiyat:Double?
}
 
class Araba{
    var renk:String?
    var kapasite:Int?
}

var laptop = Urun()

var bmw = Araba()

laptop.ad = "macbook"
laptop.fiyat = 11987.67
print(laptop.ad!)
print(laptop.fiyat!)

bmw.kapasite = 4
bmw.renk = "kırmızı"
print(bmw.renk!)
print(bmw.kapasite!)

class Otobus {
    var nereden:String?
    var nereye:String?
    var kapasite:Int?
    var mevcutYolcu:Int?
    
    func yolcuAl(yolcu:Int){
        mevcutYolcu! += yolcu
        if mevcutYolcu! < 150{
            print(mevcutYolcu!)
        }
        else {
            print("kapasite dolu!")
        }
    }
    
    func yolcuIndir(yolcu:Int) {
        mevcutYolcu! -= yolcu
    }
    
    func bilgiAl(){
        print("Kapasite : \(kapasite!)")
        print("nereden : \(nereden!)")
        print("nereye  : \(nereye!)")
        print("mevcutYolcu : \(mevcutYolcu!)")
    }
    
    
}

var mercedes = Otobus()

mercedes.mevcutYolcu = 50
mercedes.nereden = "Ankara"
mercedes.nereye = "Istanbul"
mercedes.kapasite = 150


mercedes.yolcuAl(yolcu: 200)
mercedes.bilgiAl()

class Maas {
    var maas = 10000.0
    var bonus = 1.10
    
    var haftalikMAssHesaplama:Double {
        get {
            return (maas * bonus)/52
        }
        
        set(yeniHaftalikMaas){
            self.maas = yeniHaftalikMaas * 52
        }
    }
}

var m = Maas()

print(m.haftalikMAssHesaplama)
m.haftalikMAssHesaplama = 600
print(m.maas)

