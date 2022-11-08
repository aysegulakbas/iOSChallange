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
