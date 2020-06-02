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
        
        UITabBar.appearance().tintColor = UIColor.init(red: 242.0/255.0, green: 153.0/255.0, blue: 74.0/255.0, alpha: 1)
        
        firstViewController.tabBarItem = UITabBarItem.init(title: "Camera", image: UIImage(named: "camera.png"), tag: 0)

        let secondViewController = LibraryViewController()

        secondViewController.tabBarItem =  UITabBarItem.init(title: "Library", image: UIImage(named: "library.png"), tag: 1)

        let tabBarList = [firstViewController, secondViewController]

        viewControllers = tabBarList
        // Do any additional setup after loading the view.
    }

}

