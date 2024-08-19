//
//  ViewController.swift
//  CustomTextField
//
//  Created by Mian Usama on 16/08/2024.
//

import UIKit

class ViewController: BaseViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var usernameContainer: CustomTextField!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        updateUI()
    }

    private func updateUI(){
        self.updateTextField(parentView: usernameContainer, label: "username", textField: usernameTextField)
    }
}

