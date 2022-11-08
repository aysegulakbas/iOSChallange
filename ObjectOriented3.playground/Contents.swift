import UIKit

class Arac {
    var renk:String?
    var vites:String?
    
    init(renk:String,vites:String) {
        self.renk = renk
        self.vites = vites
    }
}

class Araba:Arac{
    var kasaTipi:String?
    
    init(kasaTipi:String,renk:String,vites:String){
        self.kasaTipi = kasaTipi
        super.init(renk: renk, vites: vites)
    }
}
    
class Nissan:Araba{
    var model:String?
    
    init(model:String,kasaTipi:String,renk:String,vites:String) {
        self.model = model
        super.init(kasaTipi: kasaTipi, renk: renk, vites: vites)
        
    }
}

var araba = Araba(kasaTipi: "Sedan", renk: "Kırmızı", vites: "Otomatik")

var arac = Arac(renk: "SEDAN", vites: "Manuel")


// Inheritance Example

class Ev {
    var pencereSayisi:Int?
    
    init(pencereSayisi:Int) {
        self.pencereSayisi = pencereSayisi
    }
    
}

class Saray:Ev {
    var kuleSayisi:Int?
    
    init(kuleSayisi:Int,pencereSayisi:Int) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
    
   }

class Villa:Ev {
    var garajVarmi:Bool?
    
    init(garajVarmi:Bool,kuleSayisi:Int,pencereSayisi:Int) {
        self.garajVarmi = garajVarmi
        super.init(pencereSayisi: pencereSayisi)
    }
}

var topkapiSarayi = Saray(kuleSayisi: 20, pencereSayisi: 10)
print(topkapiSarayi.kuleSayisi!)
var bogazVilla = Villa(garajVarmi: true, kuleSayisi: 20, pencereSayisi: 10)
print(bogazVilla.garajVarmi!)

// Oveerride

class Hayvan {
    func sesCikar(){
        print("sesim yok")
    }
}

class Memeli:Hayvan{
    
}
class Kedi:Memeli {
    override func sesCikar() {
        print("Miyav miyav")
    }
    

}
class Kopek:Memeli {
    override func sesCikar() {
        print("Hav hav")
    }
}
var h = Hayvan()

h.sesCikar()
var m = Memeli()
m.sesCikar()
var k = Kedi()
k.sesCikar()
var ko = Kopek()
ko.sesCikar()

var hayvan:Hayvan = Kopek() // Polimorfizm
hayvan.sesCikar()

// is yapısı type checking
var saray = Saray(kuleSayisi: 2, pencereSayisi: 5)
if saray is Saray
{
    print("bu bir saraydır")
}
else {
    print("bu bir saray degildir")
}

// Upcasting
var ev1:Ev = Saray(kuleSayisi: 2, pencereSayisi: 10) as Ev

// Downcasting
var ev2 = Ev(pencereSayisi: 44)
