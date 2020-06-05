//
//  CameraViewController.swift
//  Doggo ver 1
//
//  Created by Neha Kunjal on 5/30/20.
//  Copyright © 2020 Elaine Chien. All rights reserved.
// Icons:
// https://icons8.com/icon/set/circle%20button/ios
//

import UIKit
import AVFoundation

class CameraViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let cameraWidgets = UIView()
        cameraWidgets.translatesAutoresizingMaskIntoConstraints = false
        //cameraWidgets.backgroundColor = .black
        view.addSubview(cameraWidgets)
        
        let captureSession = AVCaptureSession()
        //captureSession.sessionPreset = .photo
        
        guard let captureDevice = AVCaptureDevice.default(for: .video) else{return}
        guard let input = try? AVCaptureDeviceInput(device: captureDevice) else{return}
        captureSession.addInput(input)
        
        let photoOutput = AVCapturePhotoOutput()
        
        if (captureSession.canAddInput(input) && captureSession.canAddOutput(photoOutput)){
            captureSession.addInput(input)
            captureSession.addOutput(photoOutput)
        }
        
    
        captureSession.startRunning()
        
        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.frame = view.bounds
        view.layer.addSublayer(previewLayer)
        
        let takePhotoButton = UIButton(type:.system)
        takePhotoButton.setImage(UIImage(named: "circle_icon"), for:.normal)
        view.addSubview(takePhotoButton)
        takePhotoButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
        
        cameraWidgets.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        cameraWidgets.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25),
        cameraWidgets.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        cameraWidgets.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        takePhotoButton.topAnchor.constraint(equalTo: cameraWidgets.topAnchor, constant: 10),
        takePhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        takePhotoButton.widthAnchor.constraint(equalToConstant: 75),
        takePhotoButton.heightAnchor.constraint(equalToConstant: 75)
            ])
        

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
