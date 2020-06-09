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

class CameraViewController: UIViewController, AVCaptureVideoDataOutputSampleBufferDelegate {

    var photoOutput: AVCapturePhotoOutput?
    let captureSession = AVCaptureSession()
    var capturedImage: UIImageView?
    var captureDevice: AVCaptureDevice!
    var takePhoto = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cameraWidgets = UIView()
        cameraWidgets.translatesAutoresizingMaskIntoConstraints = false
        cameraWidgets.backgroundColor = .black
        
        setUpCamera()
    
        captureSession.startRunning()
        
        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.frame = view.bounds
        view.layer.addSublayer(previewLayer)
        
        view.addSubview(cameraWidgets)
        
        let dataOutput = AVCaptureVideoDataOutput()
        dataOutput.videoSettings = [(kCVPixelBufferPixelFormatTypeKey as String):NSNumber(value:kCVPixelFormatType_32BGRA)]
        dataOutput.alwaysDiscardsLateVideoFrames = true
        
        if captureSession.canAddOutput(dataOutput) {
            captureSession.addOutput(dataOutput)
        }
        captureSession.commitConfiguration()
        
        
        let queue = DispatchQueue(label: "com.cameraQueue")
        dataOutput.setSampleBufferDelegate(self, queue: queue)

        let takePhotoButton = UIButton(type:.system)
        takePhotoButton.setImage(UIImage(named: "circle_icon"), for:.normal)
        view.addSubview(takePhotoButton)
        takePhotoButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
        
        cameraWidgets.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        cameraWidgets.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.20),
        cameraWidgets.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        cameraWidgets.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        takePhotoButton.topAnchor.constraint(equalTo: cameraWidgets.topAnchor, constant: 10),
        takePhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        takePhotoButton.widthAnchor.constraint(equalToConstant: 75),
        takePhotoButton.heightAnchor.constraint(equalToConstant: 75)
        ])
        
        takePhotoButton.addTarget(self, action:#selector(savePhoto), for: .touchUpInside)
        
    }

    @objc func savePhoto(sender: UIButton){
        takePhoto = true
    }

    func setUpCamera() {
        captureSession.sessionPreset = .photo
        
        guard let captureDevice = AVCaptureDevice.default(for: .video) else {return}
        guard let input = try? AVCaptureDeviceInput(device: captureDevice) else {return}
        captureSession.addInput(input)
        
        photoOutput = AVCapturePhotoOutput()
        
        if (captureSession.canAddInput(input)) {
            captureSession.addInput(input)
        }
        
        if (captureSession.canAddOutput(photoOutput!)){
            captureSession.addOutput(photoOutput!)
        }
    }

    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        if (takePhoto) {
            takePhoto = false
            if let image = self.getImageFromSampleBuffer(buffer: sampleBuffer) {
                let editView = EditViewController()
                editView.takenPhoto = image
                
                DispatchQueue.main.async {
                    self.present(editView, animated: true, completion: nil)
                }
            }
        }
    }
    
    func getImageFromSampleBuffer(buffer: CMSampleBuffer) -> UIImage? {
        if let pixelBuffer = CMSampleBufferGetImageBuffer(buffer) {
            let ciImage = CIImage(cvImageBuffer: pixelBuffer)
            let context = CIContext()
            
            let imageRect = CGRect(x: 0, y: 0, width: CVPixelBufferGetWidth(pixelBuffer), height: CVPixelBufferGetHeight(pixelBuffer))
            
            if let image = context.createCGImage(ciImage, from: imageRect) {
                return UIImage(cgImage: image, scale: UIScreen.main.scale, orientation: .right)
            }
        }
        return nil
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
