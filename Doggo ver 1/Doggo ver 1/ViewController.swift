//
//  ViewController.swift
//  Doggo ver 1
//
//  Created by Elaine Chien on 5/23/20.
//  Copyright © 2020 Elaine Chien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func displayLoadingVisuals() {
        let loadingImageView = UIImageView(image: UIImage(named: "dog_circle"))
        let topHalfContainer = UIView()
        let welcomeText = UITextView()
        let continueButton = UIButton()
        
        //enabling auto layout
        topHalfContainer.translatesAutoresizingMaskIntoConstraints = false
        loadingImageView.translatesAutoresizingMaskIntoConstraints = false
        welcomeText.translatesAutoresizingMaskIntoConstraints = false
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(topHalfContainer)
        topHalfContainer.addSubview(loadingImageView)
        
        
        welcomeText.text = "Welcome to Doggo"
        welcomeText.allowsEditingTextAttributes = false
        welcomeText.font = UIFont.systemFont(ofSize: 20)
        welcomeText.textAlignment = .center
        view.addSubview(welcomeText)
        
        
        //TODO:button functionality
        continueButton.backgroundColor = .lightGray
        continueButton.setTitle("Continue", for:.normal)
        view.addSubview(continueButton)
        
        //activating auto layout constraings
        NSLayoutConstraint.activate([
            topHalfContainer.topAnchor.constraint(equalTo: view.topAnchor),
            topHalfContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            topHalfContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topHalfContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            
            loadingImageView.centerXAnchor.constraint(equalTo:view.centerXAnchor),
            loadingImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            loadingImageView.widthAnchor.constraint(equalTo: topHalfContainer.heightAnchor, multiplier: 0.5),
            loadingImageView.heightAnchor.constraint(equalTo: topHalfContainer.heightAnchor, multiplier: 0.5),
            
            
            welcomeText.topAnchor.constraint(equalTo: topHalfContainer.bottomAnchor),
            welcomeText.heightAnchor.constraint(equalToConstant: 30),
            welcomeText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            welcomeText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            
            continueButton.topAnchor.constraint(equalTo: welcomeText.bottomAnchor, constant: 5),
            continueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            continueButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4),
            continueButton.heightAnchor.constraint(equalToConstant: 30),
               ])
        
            
    }

    override func viewDidLoad() {
        
        super.viewDidLoad()
        displayLoadingVisuals()
    
    }


}

