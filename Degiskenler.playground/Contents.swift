import UIKit

var urun_id:Int = 10
var urun_ad:String = "Patates"
var urun_yas:Int = 5
var urun_kabuk:Bool = true

print(urun_id)
print(urun_ad)
print(urun_yas)
print(urun_kabuk)

// Çıktıya değişken ekleme \()

print("Ürün id : \(urun_id) no lu ürünün adı: \(urun_ad) ve yasi \(urun_yas) ve kabuk durumu \(urun_kabuk)")

//Tür Dönüsümleri

var yazi1 = "41T"

if let sayi1 = Int(yazi1) {
    print(yazi1)
}
// Tuples

var kisi = ("ahmet", "aksoy")
print(kisi.0)
    
