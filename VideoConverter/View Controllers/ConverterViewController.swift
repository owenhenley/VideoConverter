//
//  ConverterViewController.swift
//  VideoConverter
//
//  Created by Owen Henley on 07/10/2019.
//  Copyright © 2019 Owen Henley. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .savedPhotosAlbum
        picker.mediaTypes = ["public.movie"]
        picker.allowsEditing = false
        present(picker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        self.dismiss(animated: true)
    }
}
