//
//  backup.swift
//  Doggo ver 1
//
//  Created by Elaine Chien on 6/5/20.
//  Copyright © 2020 Elaine Chien. All rights reserved.
//

import Foundation

/*
class CameraViewControllerBackup: UIViewController {

//putting these out here because I may need them when trying to write a function for the target of the takephoto button
var photoOutput: AVCapturePhotoOutput?
var captureSession: AVCaptureSession?

override func viewDidLoad() {
    super.viewDidLoad()
    let previewView = UIView()
    previewView.translatesAutoresizingMaskIntoConstraints = false
    
    self.captureSession = AVCaptureSession()
    if(self.captureSession == nil){
        print("Capture Session is missing")
        return
    }
    self.captureSession?.sessionPreset = .photo
    
    guard let captureDevice = AVCaptureDevice.default(for: .video) else{return}
    guard let input = try? AVCaptureDeviceInput(device: captureDevice) else{return}
    self.captureSession?.addInput(input)
    
    self.photoOutput = AVCapturePhotoOutput()
    if(self.photoOutput == nil){
        print("photo output missing")
        return
    }
    
    if (self.captureSession!.canAddInput(input) && self.captureSession!.canAddOutput(self.photoOutput!)){
        self.captureSession?.addInput(input)
        self.captureSession?.addOutput(self.photoOutput!)
    }
    
    

    self.captureSession!.startRunning()
    let previewLayer = AVCaptureVideoPreviewLayer(session: self.captureSession!)
    //view.layer.addSublayer(previewLayer)
    //previewLayer.frame = view.frame
    previewView.backgroundColor = .red
    view.addSubview(previewView)
    //previewView.layer.addSublayer(previewLayer)
    //previewLayer.frame = previewView.bounds
    
    let rootLayer: CALayer = previewView.layer
    rootLayer.masksToBounds = true
    previewLayer.frame = rootLayer.bounds
    rootLayer.addSublayer(previewLayer)
    previewView.contentMode = UIView.ContentMode.scaleToFill
           
    
    
    let takePhotoButton = UIButton(type:.system)
    takePhotoButton.setTitle("Take Photo", for:.normal)
    takePhotoButton.backgroundColor = .green
    view.addSubview(takePhotoButton)
    takePhotoButton.translatesAutoresizingMaskIntoConstraints = false
    
    //create target for take photo button
    //figure out constraints
    //create function to display preview
    
    NSLayoutConstraint.activate([
    //TODO: check to see if this bottom anchor works
    
    previewView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
    previewView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.75),
    previewView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
    previewView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
    takePhotoButton.topAnchor.constraint(equalTo: previewView.bottomAnchor, constant: 10),
    takePhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
    takePhotoButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2),
    takePhotoButton.heightAnchor.constraint(equalToConstant: 30)])
    

}

func takePhoto()  {
    let settings = AVCapturePhotoSettings(format: [AVVideoCodecKey: AVVideoCodecType.jpeg])
   
}

 */
