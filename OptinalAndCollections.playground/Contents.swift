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

var notlar = [Int] ()
var dersler = [String]()

dersler.append("Tarih")
notlar.append(20)

dersler.append("Fizik")
notlar.append(100)

dersler.append("Matematik")
notlar.append(100)

dersler.append("Biyoloji")
notlar.append(40)

dersler.append("Kimya")
notlar.append(60)

var toplam1 = 0

for i in 0...(notlar.count-1) {
    print("\(dersler[i]) : \(notlar[i])")
    toplam1 = toplam1 + notlar[i]
}

print("Ortalama : \(toplam1/dersler.count)")


// Set
var fruits: Set = ["çilek","muz","elma","kivi"] // tekrar aynı veriyi yazamayız. Veriler tkrarlanmaz.
//Boş bir set oluşturma
var rakamlar = Set <Int> ()

for fruit in fruits {
    print(fruit)
}
if fruits.isEmpty {
    print("empty")
}
else{
   print("not empty")
}
fruits.insert("Armut")

print(fruits)

print(fruits.count)

if let temp = fruits.first {
    print(temp)
}

if fruits.contains("muz") {
    print("muz var :D")
}
else {
    print("Muz yok baby")
}
print(fruits.max()!)
print(fruits.min()!)


// DICTIONARY

var dict1 = [Int:String]()
var dict2 = [1:"bir",2:"iki"]
var dict3:[Int:String] = [5:"bes",9:"dokuz"]

var iller = [16:"bursa",34:"istanbul",6:"ankara"]

iller[16] = "yeni bursa" //update ettik veriyi
iller.updateValue("yeni ankara", forKey: 6) //update ettik veriyi (method kullanarak)
print(iller)
var ters = iller.reversed() // ters cevirir.

//Dictionary Dönüşümleri

var dersler1 = ["kimya", "matematik","Edebiyat"]
var notlar1 = [50,80,70]

var dersNotlari = Dictionary(uniqueKeysWithValues: zip(notlar1,dersler1)) // dict birlestirme
print(dersNotlari)

var urunFiyatlari:[Double:String] = [15.99:"Kitap",59.99:"T-shirt",239.99:"Saat"]

var fiyatlar1 = [Double](urunFiyatlari.keys)
var urunler1 = [String](urunFiyatlari.values) // Dict parçalama

print(fiyatlar1)
print(urunler1)

// Dictionary Filtreleme

var okul:[Int:String] = [154:"Ahmet",67:"Mehmet",871:"Zeynep",45:"Ahmet"]
var sonuc11 = okul.filter({$0.key > 70})
print(sonuc11)

var sonuc22 = okul.filter({$0.value == "Ahmet"})
print(sonuc22)

// Dictionary Karne App
var derslerNotlar2 = [String:Int]()

derslerNotlar2["tarih"] = 20
derslerNotlar2["Fizik"] = 80
derslerNotlar2["matematik"] = 100
derslerNotlar2["kimya"] = 50
derslerNotlar2["biyoloji"] = 40

var toplam5 = 0

for (ders,not) in derslerNotlar2 {
    print("\(ders) : \(not)")
    toplam5 += not
}
print("Ortalama: \(toplam5/derslerNotlar2.count)")









