//
//  ViewController.swift
//  Doggo ver 1
//
//  Created by Elaine Chien on 5/23/20.
//  Copyright © 2020 Elaine Chien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        let loadingImageView = UIImageView(image: UIImage(named: "dog_circle"))
        view.addSubview(loadingImageView)
        loadingImageView.translatesAutoresizingMaskIntoConstraints = false
        //let margins = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            loadingImageView.centerXAnchor.constraint(equalTo:view.centerXAnchor),
            loadingImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            loadingImageView.widthAnchor.constraint(equalToConstant: 300),
            loadingImageView.heightAnchor.constraint(equalToConstant: 300)
        ])
        //loadingImageView.layer.cornerRadius = loadingImageView.frame.size.width / 2
        //loadingImageView.clipsToBounds = true

    }


}

