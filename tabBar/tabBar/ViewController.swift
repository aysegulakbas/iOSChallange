//
//  ViewController.swift
//  tabBar
//
//  Created by mac on 8.12.2022.
//

import UIKit

class ViewController: UIViewController {

    var profileCounter = 0
    var jobCounter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: increase profile badge count
    @IBAction func profileIncrease(_ sender: Any) {
        if let tabItems = tabBarController?.tabBar.items {
            let profileTabBarItem = tabItems[0]
            
             profileCounter += 1
            
            profileTabBarItem.badgeColor = UIColor.red
            profileTabBarItem.badgeValue = String(profileCounter)
        }
    }
    // MARK: increase job badge count
    @IBAction func jobIncrease(_ sender: Any) {
        if let tabItems = tabBarController?.tabBar.items {
            let jobTabBarItem = tabItems[1]
            
            jobCounter += 1
            
            jobTabBarItem.badgeColor = UIColor.green
            jobTabBarItem.badgeValue = String(jobCounter)
        }
    }
    
}

