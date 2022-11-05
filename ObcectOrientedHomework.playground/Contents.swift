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


// Algorithm question answer
var nums = [2,7,11,15]
var target = 26

for (index,i) in nums.enumerated() {

    for j in nums {
        if i + j == target {
            print(index)
        }
    }
}

func icAciHesapla(kenarSayisi:Int) -> Int {
    let sonuc = (kenarSayisi - 2) * 180
    
    return sonuc
}

let hesap = icAciHesapla(kenarSayisi: 4)
print(hesap)

func maasHesapla(gun:Int) -> Int {
    let calismaSaati = gun * 8
    var maas = 0
    if calismaSaati > 160
    {
        maas = (calismaSaati - 160) * 20 + (160 * 10)
    }
    else  {
        maas = calismaSaati * 10
    }
    return maas
        
}

let hesaplananMaas = maasHesapla(gun: 20)
print(hesaplananMaas)
