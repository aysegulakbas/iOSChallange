//
//  ViewController.swift
//  segueTask
//
//  Created by mac on 4.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelOne: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func gotoTwo(_ sender: Any) {
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gototwo" {
            labelOne.text = "go from 1 to 2"
        }
    }

}

