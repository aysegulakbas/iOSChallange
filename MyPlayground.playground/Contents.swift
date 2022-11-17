import UIKit
import Darwin

var date = Date()
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "dd.MM.YYYY"
let dataText = dateFormatter.string(from: date)
print(dataText)

let calender = Calendar.current
var d = calender.component(.day, from: date)

var results = [Int]()
var results2 = [Int]()
var daycount:Int = d + 30
for i in d...daycount-1 {
    if (i % 2 == 0) {
        results.append(i)
    
        
    }
    else {
        results2.append(i)
    }
}
print("Erkek Gunleri Sayısı \(results.count)")
print("Kadın Gunleri Sayısı \(results.count)")

//Bir öğrenci modeli oluştur,
// bir öğrenci topluluğu oluştur içine Öğrenciler atanabilsin.
//10-50 arasında random öğrenci oluştur.
//oluşan öğrencileri Bir dictinary ata,
//Dict içinde bulunan kadın öğrencileri filtrele.




struct Student {
  var name = ""
  var age = 0
  var gender = 0 //0 male, 1 female so you can random it
  var schoolNumber = 0
}
let student = Student(name: "Ad", age: Int.random(in: 18...25), gender: Int.random(in: 0...1), schoolNumber: Int.random(in: 0...1000))

struct Class {
    var students: [Student] = []
    var capacity: Int = 0
}
