//
//  ViewControllerB.swift
//  dataTransfer
//
//  Created by mac on 5.12.2022.
//

import UIKit

class ViewControllerB: UIViewController {
    var mesaj: String?
    @IBOutlet weak var etiket: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.etiket.text = mesaj
        
    }
    



}
