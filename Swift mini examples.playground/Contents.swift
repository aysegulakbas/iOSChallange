import UIKit

/* Examples
1. Parametre olarak girilen dereceyi fahrenhiet a dönüştürdükten sonra geri döndüren bir metod yazınız. 
 
* T (°F) = T (°C) × 1.8 + 32

2. Kenarları parametre olarak girilen ve dikdörtgenin çevresini hesaplayan bir metod yazınız..

3. Parametre olarak girilen kelime ve harf için harfin kelime içinde kaç adet olduğunu gösteren bir metod yazınız.

 
4. Parametre olarak girilen sayının faktoriyel değerini hesaplayıp geri döndüren metodu yazınız.

5. Parametre olarak girilen kenar sayısına göre iç açılar toplamını hesaplayıp sonucu geri gönderen metod yazınız.
 * Formül n: kenar sayısı (n-2).180

6. Parametre olarak girilen gün sayısına göre maaş hesabı yapan ve elde edilen değeri geri döndüren metod yazınız.
 * 1 Günde 8 saat çalışılabilir.
 * Çalışma saat ücreti : 10 tl
 * Mesai saat ücreti: 20tl
 * 160 saat uzeri mesai sayilir.

7. Parametre olarak girilen kota miktarına göre ücreti hesaplayarak geri döndüren metodu yazınız.
 • 50GB 100 TL
 • Kota aşımından sonra her 1GB 4 TL */


//1

func heat(t:Int) -> Double {
    let result = (Double(t) * 1.8) + 32
    return result
}
var r = heat(t: 15)
print("derece transformed \(r) fahrenheit")

//2

func env(n1:Int , n2:Int) {
    
    var h = n1 * n2
    print("This shape is env \(h)")
}
env(n1: 5, n2: 4)

//3. Parametre olarak girilen kelime ve harf için harfin kelime içinde kaç adet olduğunu gösteren bir metod yazınız.

func step(word:String, h:String) {
    var k = [Character]()
    for s in word {
        
        if String(s) == h {
            k.append(s)
        }
    }
    print(k.count)
}
step(word: "aaayyaay", h: "y")

// 4. Parametre olarak girilen sayının faktoriyel değerini hesaplayıp geri döndüren metodu yazınız.

class Eg {
    
    func facc(num:Int) -> Int {
        var result = 1
        
        for i in 1...num{
            result = result * i
        }
        return result
    }
}
var o = Eg()

print(o.facc(num: 5))

/* 5. Parametre olarak girilen kenar sayısına göre iç açılar toplamını hesaplayıp sonucu geri gönderen metod yazınız.
 * Formül n: kenar sayısı (n-2).180 */

class Egfive {
    func degg(n:Int) -> Int {
        
        var result = (n - 2) * 180
        
        return result
    }
}

var object = Egfive()
print(object.degg(n: 4))

/* 6. Parametre olarak girilen gün sayısına göre maaş hesabı yapan ve elde edilen değeri geri döndüren metod yazınız.
 * 1 Günde 8 saat çalışılabilir.
 * Çalışma saat ücreti : 10 tl
 * Mesai saat ücreti: 20tl
 * 160 saat uzeri mesai sayilir. */


class WageAccount {
    var totalHours = 0
    var wage = 0
    func wage(day:Int) -> Int {
        
        totalHours = day * 8
        if totalHours < 160 {
            wage = totalHours * 10
        }
        else {
            wage = ((totalHours - 160) * 20) + (160 * 10)
        }
        return wage
    }
}

var wg = WageAccount()

print(wg.wage(day: 30))

/*7. Parametre olarak girilen kota miktarına göre ücreti hesaplayarak geri döndüren metodu yazınız.
 • 50GB 100 TL
 • Kota aşımından sonra her 1GB 4 TL */

class cotaAccount {
    
    func cotaAc(cota:Int) -> Int{
        var mon = 0
        if cota > 50 {
            mon = ((cota - 50) * 4) + 100
        }
        else {
            mon = 100
        }
        return mon
    }
}
var obj = cotaAccount()
print("\(obj.cotaAc(cota: 70)) TL")

