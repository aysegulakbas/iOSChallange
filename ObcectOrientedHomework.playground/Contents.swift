import UIKit

func sicaklikHesapla(sicaklik:Double) -> Double{
    let sonuc = (sicaklik * 1.8) + 32
    return sonuc
}
let fahrenayt = sicaklikHesapla(sicaklik: 20)
print(fahrenayt)


func cevreHesapla(kenar1:Int,kenar2:Int) -> Int {
    let cevre = 2 * (kenar1 + kenar2)
    return cevre
}
let cevrehesap = cevreHesapla(kenar1: 10, kenar2: 20)
print(cevrehesap)

func faktoriyelHesapla(sayi:Int) -> Int {
    var faktoriyel = 1
    for s in 1...sayi {
        faktoriyel *= s
    }
    
    return faktoriyel
}
faktoriyelHesapla(sayi: 5)

func adetHesapla(kelime:String,harf:Character){
    var sonuc = 0
    for k in kelime{
        if k == harf {
            sonuc += 1
        }
    }
    print("Harf adeti : \(sonuc)")
}
4
adetHesapla(kelime: "ayse", harf: "a")

