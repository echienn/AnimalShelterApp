//
//  ViewController.swift
//  Doggo ver 1
//
//  Created by Elaine Chien on 5/23/20.
//  Copyright © 2020 Elaine Chien. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstViewController = CameraViewController()
                
        firstViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 0)

        let secondViewController = LibraryViewController()

        secondViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)

        let tabBarList = [firstViewController, secondViewController]

        viewControllers = tabBarList
        // Do any additional setup after loading the view.
    }

}

