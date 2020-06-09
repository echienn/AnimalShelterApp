//
//  EditViewController.swift
//  Doggo ver 1
//
//  Created by Neha Kunjal on 6/8/20.
//  Copyright © 2020 Elaine Chien. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    var takenPhoto: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let availableImage = takenPhoto {
            view.addSubview(UIImageView(image: availableImage))
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
