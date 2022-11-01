import UIKit

var str:String?

str = "Merhaba"

if str != nil {
    print(str!)
}else {
    print("nil deger iceriyor.")
}

//Optinal Binding otomatik unwrapping

var str1:String?

str1 = "Merhaba"

if let temp = str1 {
    print(temp)
}
else {
    print("str nil deger iceriyor")
}

// Array Filtreleme

var sayilar = [0,1,2,3,4,5,6,7,8,9,10]
var sonuc1 = sayilar.filter({$0>7}) // $0 her bir elemanı temsil eder.
print(sonuc1)
var sonuc2 = sayilar.filter({$0<7})
print(sonuc2)

//Array- ortalama hesaplama

var number = [30,40,50,100,80,90,70]

var toplam = 0

for n in number {
    toplam = toplam + n
    
}
print("Toplam : \(toplam)")

print("Ortalama : \(toplam/number.count)")

var numbers = [1,2,3,4,5]

for (indeks,n) in numbers.enumerated() { // enumarated hem index no ları hem elemanları birer birer getirmek için kullanılır.
    let sonuc = n * 2
    numbers[indeks] = sonuc
}
print(numbers)

var numaralar = [1,4,67,42,89,90,54,12,65,73,64,87]

var tekler = [Int]()
var ciftler = [Int]()

for no in numaralar {
    let sonuc0 = no % 2
    
    if sonuc0 == 1 {
        tekler.append(no)

    }
   
    if sonuc0 == 0{
        ciftler.append(no)

    }
}
print("Tekler \(tekler)")
print("Ciftler \(ciftler)")




