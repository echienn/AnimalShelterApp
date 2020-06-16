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
    
    let items = ["Brightness", "Contrast", "Crop", "Review"]
    lazy var segmentedControl: UISegmentedControl = {
        let control = UISegmentedControl(items: items)
        control.translatesAutoresizingMaskIntoConstraints = false
        control.selectedSegmentIndex = 0
        control.layer.backgroundColor = UIColor.white.cgColor
        control.tintColor = UIColor.gray
        return control
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let baseView = UIView()
        //baseView.backgroundColor = .black
        //view.addSubview(baseView)

        if let availableImage = takenPhoto {
            view.addSubview(segmentedControl)
            //view.addSubview(UIImageView(image: availableImage))
            //let photoView = UIImageView(image: availableImage)
            //baseView.addSubview(photoView)
            //photoView.translatesAutoresizingMaskIntoConstraints = false

            
            NSLayoutConstraint.activate([
                segmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor)
                //baseView.topAnchor.constraint(equalTo: view.topAnchor),
                //baseView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                //baseView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                //baseView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                //photoView.topAnchor.constraint(equalTo: baseView.topAnchor),
                //photoView.leadingAnchor.constraint(equalTo: baseView.leadingAnchor),
                //photoView.trailingAnchor.constraint(equalTo: baseView.trailingAnchor)
            ])
 
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
