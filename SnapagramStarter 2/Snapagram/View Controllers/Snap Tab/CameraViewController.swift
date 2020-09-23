//
//  CameraViewController.swift
//  Snapagram
//
//  Created by RJ Pimentel on 3/11/20.
//  Copyright © 2020 iOSDeCal. All rights reserved.
//

import UIKit

class CameraViewController: UIViewController {
    
    var imagePickerController: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

           // Do any additional setup after loading the view.
        self.imagePickerController = UIImagePickerController()
        self.imagePickerController.delegate = self
        self.imagePickerController.sourceType = .photoLibrary
    }
    
    @IBOutlet weak var fromCameraButton: UIButton!
    @IBOutlet weak var fromPhotosButton: UIButton!
    
    @IBAction func fromCameraButtonPressed(_ sender: Any) {
        //open to camera...
        self.imagePickerController.sourceType = .camera
        present(imagePickerController, animated: true) {
            print("imagePIckerPresented")
        }
        
    }
    
    @IBAction func fromPhotosButtonPressed(_ sender: Any) {
        //open photo library
        self.imagePickerController.sourceType = .photoLibrary
        present(imagePickerController, animated: true) {
            print("imagePIckerPresented")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? ThreadOrPostViewController, let image = sender as? UIImage {
            
            //passing the image taken/chosen so the user can decide if it will be posted to the thread or feed
            dest.imageToDisplay = image
            
        }
        
    }
}

extension CameraViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        
        if let image = info[.originalImage] as? UIImage {
            //let currTime = Date()
            performSegue(withIdentifier: "toThreadOrPost", sender: image)
            
        }
        
        imagePickerController.dismiss(animated: true, completion: nil
        )
    }
    
    
}
