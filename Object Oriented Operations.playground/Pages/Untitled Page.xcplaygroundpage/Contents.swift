//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

class Car {
    var color:String?
    var speed:Int?
    var isWork:Bool?
    
    
    func worked() {
        isWork = true
    }
    
    func stopped(){
        isWork = false
        speed = 0
    }
    
    func fast(muchKm:Int) {
        speed! += muchKm
    }
    
    func slow(muchKm:Int){
        speed! -= muchKm
    }
    
    func getInfo(){
        print("Color: \(color!)")
        print("Speed: \(speed!)")
        print("isWork: \(isWork!)")
    }
}

var mercedes = Car()
mercedes.color = "Black"
mercedes.isWork = true
mercedes.speed = 90


mercedes.getInfo()
mercedes.stopped()
mercedes.getInfo()
mercedes.fast(muchKm: 15)
mercedes.getInfo()
mercedes.slow(muchKm: 40)
mercedes.getInfo()

