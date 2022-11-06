import UIKit

var courierList:[Int] = []
var motorcycleList:[Int] = []

motorcycleList.append(contentsOf: 8...100)

// FİBONACCI
var a = 1
var b = 1
var c = 0

print(a)
print(b)
for _ in 1...10 {
    c = a + b
    a = b
    b = c
    print(c)
}
 // Verilen Metin içinden rakam toplamlarını bul

var str = "thjdjdkdll56325420365kkfjffff4589654fjfjf"
var strArray = Array(str)

var sum = 0
for i in strArray {
    
    if let b = i.wholeNumberValue {
        sum += b
    }
}
print(sum)


//func random(courierList:[Int]){
  //  let courierList = arc4random_uniform(100)
//}
