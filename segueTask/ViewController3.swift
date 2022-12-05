//
//  ViewController3.swift
//  segueTask
//
//  Created by mac on 4.12.2022.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var labelThree: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var goto2: NSLayoutConstraint!
    
    @IBAction func goto1(_ sender: Any) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gototwo_" {
            labelThree.text = "go from 3 to 2"
        }
        else {
            labelThree.text = "go from 3 to 1"
            
        }
    }
}
