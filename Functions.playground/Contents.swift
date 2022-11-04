import UIKit

func selamla () { // Geri donus degeri olmayan
    let sonuc  = "Merhaba Aysegul"
    print(sonuc)
}

selamla()

func selamla1() -> String { // Geri Dönus degeri olan
    let sonuc = "Merhaba Aysegul"
    return sonuc
}

let gelenSonuc = selamla1()

print(gelenSonuc)
 
func topla(sayi1:Int,sayi2:Int) -> Int {
    return sayi1 + sayi2
}

let gelenSonuc1 = topla(sayi1: 220, sayi2: 20)
print(gelenSonuc1)

 // Metotlara Erisiim

class Matematik {
    func topla(sayi1: Int, sayi2:Int){
        let toplam = sayi1 + sayi2
        print(toplam)
    }
    func cikar(sayi1:Double,sayi2:Double) -> Double {
        return sayi1 - sayi2
    }
    
    func carp(sayi1:Int,sayi2:Int, isim:String) {
        let sonuc = sayi1 * sayi2
        print("Carpma yapan \(isim) Sonuc : \(sonuc)")
    }
    func bol(sayi1:Double,sayi2:Double) -> String {
        return  "Bolme: \(sayi1/sayi2)"
    }
}

var m = Matematik()

m.topla(sayi1: 10, sayi2: 20)

m.cikar(sayi1: 20, sayi2: 10)

m.carp(sayi1: 10, sayi2: 10, isim: "ahmet")

let bol = m.bol(sayi1: 10, sayi2: 20)
print(bol)

func toplamVariadiac(sayilar:Int...) -> Int {
    var toplam = 0
    for s in sayilar {
        toplam += s
    }
    return toplam
}
var v1 = toplamVariadiac(sayilar: 1,2,3,4,5)
print(v1)

var v2 = toplamVariadiac(sayilar: 10,28,42,56,78,99)
print(v2)

// Birden fazla gerii Dönüş Değeri olan fonksiyonlar

func islem(sayilar:[Int]) -> (toplam:Int,faktoriyel:Int) {
    var toplam = 0
    var faktoriyel = 1
    
    for s in sayilar{
        toplam += s
        faktoriyel *= s
        
    }
    return (toplam,faktoriyel)
}
var dizi = [1,2,3,4,5]
let b1 = islem(sayilar: dizi)
print("Toplam : \(b1.toplam)")
print("faktoriyel : \(b1.faktoriyel)")
