import UIKit
import Foundation

//Donguler 3 ile 6 arasında

for i in 3...6 {
    print("Dongu 1 : \(i)")
}

var sayac = 3
while sayac < 7 {
    print("Dongu 2 : \(sayac)")
    sayac += 1
    
    
}
// 0 ile 8 arasında 2 şer
for i in stride(from: 0, to: 8, by: 2) {
    print("Dongu 3 : \(i)")
}

var sayac1 = 0
while sayac1 < 9 {
    print("Dongu 4 : \(sayac1)")
    sayac1 += 2
}


var isim1 = "Ahmet"

for i in 1...5{
    print("\(i). \(isim1)")
}

var isim2 = "Aysegul"
var harfSayisi = isim2.count

for i in 1...harfSayisi  {
    print("\(i). \(isim2)")
}

// while veri işleme

var veri = 5

while veri > 0 {
    print("\(veri).veri")
    veri -= 1
}

// BREAK CONTINUE

for i in 1...5 {
    if i == 3 {
        break
    }
    print("Dongu 1 : \(i)")
}

for i in 1...5 {
    if i == 3 {
        continue
    }
    print("Dongu 2 : \(i)")
}


// BAZI HAZIR KOMUTLAR

//rastgele sayi

for _ in 1...10 {
    let rasgeleSayi = Int(arc4random_uniform(10))
    print(rasgeleSayi)
}

let c = ceil(6.5) // bi uste yuvarlar
print(c)

let f = floor(6.5) // bi alta yuvarlar
print(f)

let s = sqrt(4.0) // karekök alma
print(s)

let p = pow(2.0, 3.0) // üs alma

let a = abs(-10) // mutlak deger alır
print(a)

let mx = max(100, 200)
print(mx)
let mn = min(300, 400)
print(mn)

//tarihsel

let tarih = Date()

let takvim = Calendar.current
let yil = takvim.component(.year, from: tarih)
let ay = takvim.component(.month, from: tarih)
let gun = takvim.component(.day, from: tarih)
let saat = takvim.component(.hour, from: tarih)
let dakika = takvim.component(.minute, from: tarih)
let saniye = takvim.component(.second, from: tarih)
print(yil)
print(ay)
print(gun)
print(saat)
print(dakika)
print(saniye)

let metre = Measurement.init(value: 50, unit: UnitLength.meters)
print(metre)

let kilometre = Measurement.init(value: 1, unit: UnitLength.kilometers)
print(kilometre)
