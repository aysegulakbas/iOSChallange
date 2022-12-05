//
//  ViewController.swift
//  dataTransfer
//
//  Created by mac on 5.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girdiAlani: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func gonder(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfaB") as! ViewControllerB
        let gonderilcekMesaj = girdiAlani.text
        gidilecekViewController.mesaj = gonderilcekMesaj!
        self.present(gidilecekViewController, animated: true, completion: nil)
    }
}

