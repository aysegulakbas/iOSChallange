import UIKit
import Darwin

var s1 = 60
var s2 = 50

var y1 = 70
var y2 = 80

print(s1 == s2) //false
print(s1 > s2) // true

print(s1>s2 || y1>y2) //true

// If Yapısı
var yas = 17
var isim = "Ahmet"

//örn 1

if yas > 18 {
    print("Resitsiniz")
    
}
else {
    print("Resit Değilsiniz")
}
//Örn 2

var name = "mehmet"
if name == "Ahmet" {
    print("Merhaba Ahmet")
}
else {
    print("Tanınmayan kisi")
}
// Örn 3

var kullaniciAdi = "admin"
var sifre = 1234

if kullaniciAdi == "admin" && sifre == 1234 {
    print("Hosgeldiniz")
}
else if kullaniciAdi == "admin" && sifre != 1234 {
    print("Sifre hatalı girdiniz")
}
else if kullaniciAdi != "admin" && sifre == 1234 {
    print("Kullanici adi hatali girdiniz")
}
else {
    print("Kulanici adini ve sifreyi hatali girdiniz")
}

// örn 4 Ternary Conditional
var a = 10
var b = 20

a > b ? print("a b den buyuk") : print("b a dan buyuk")


// ÖRNEK ALAN HESABI

print("Çember Alani (1)")
print("Diktörtgen Alani (2)")

var secim = 1
let kısaKenar = 10
let uzunKenar = 20
let yaricap = 4
let const = 3.14

if secim == 1 {
    print("Seciminiz : \(1)")
    let sonuc = Double(yaricap) * Double(yaricap) * const
    print("Çemberin Alani \(sonuc)")
    
}

if secim == 2 {
    print("Seciminiz : \(secim)")
    let sonuc = kısaKenar * uzunKenar
    print("Diktörgenin Alan \(sonuc)")
}

// Örn İf Dört islem
print("Toplama (1)")
print("Çıkarma (2)")
print("Carpma (3)")
print("Bolme (4)")

let tercih = 2
let sayi1 = 100
let sayi2 = 20

if tercih == 1 {
    print("tercihiniz \(1)")
    let sonuc = sayi1 + sayi2
    print(sonuc)
}

else if tercih == 2{
    print("tercihiniz \(2)")
    let sonuc = sayi1 - sayi2
    print(sonuc)
}

else if tercih == 3 {
    print("tercihiniz \(3)")
    let sonuc = sayi1 * sayi2
    print(sonuc)
}
else {
    print("tercihiniz \(4)")
    let sonuc = sayi1 / sayi2
    print(sonuc)
}

// SWİTCH

var gun = 6

switch gun {
    case 1:
        print("Pazartesi")
    case 2:
        print("Salı")
    case 3:
        print("Çarşamba")
    case 4:
        print("Persembe")
    case 5:
        print("Cuma")
        
    default:
        print("Haftasonu")
}

print("Toplama (1)")
print("Cıkarma (2)")
print("Bölme (3)")
print("Carpma (4)")

var islem = 2
let x = 30
let y = 10

switch islem {
    case 1:
        print("Toplama \(x+y)")
    case 2:
        print("Cıkarma \(x-y)")
    case 3:
        print("Bolme \(x/y)")
    case 4:
        print("Carpma \(x*y)")
    default:
        print("Dogru seçim yapınız lütfen.")
}

var num = 10
var result = num % 2

switch result {
    case 0:
        print("Çift sayidir")
    case 1:
        print("Tek sayidir")
    default:
        print("Belirli Değil")
        
}






