//
//  ViewController2.swift
//  segueTask
//
//  Created by mac on 4.12.2022.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var labelTwo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func goto3(_ sender: Any) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotothree" {
            labelTwo.text = "go from 2 to 3"
        }
    }


}
