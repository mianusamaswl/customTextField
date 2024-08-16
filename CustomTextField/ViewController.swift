//
//  ViewController.swift
//  CustomTextField
//
//  Created by Mian Usama on 16/08/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var usernameContainer: CustomTextField!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        updateUI()
    }


    private func updateUI(){
        /// Initialize CustomTextField with the outlet text field
        let customTextField = CustomTextField(labelName: "Username", textField: usernameTextField)
        usernameContainer.addSubview(customTextField)
        /// Set constraints to ensure the custom text field fills the container
        customTextField.translatesAutoresizingMaskIntoConstraints = false
        customTextField.topAnchor.constraint(equalTo: usernameContainer.topAnchor).isActive = true
        customTextField.bottomAnchor.constraint(equalTo: usernameContainer.bottomAnchor).isActive = true
        customTextField.leadingAnchor.constraint(equalTo: usernameContainer.leadingAnchor).isActive = true
        customTextField.trailingAnchor.constraint(equalTo: usernameContainer.trailingAnchor).isActive = true
    }
}

