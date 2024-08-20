//
//  ViewController.swift
//  CustomTextField
//
//  Created by Mian Usama on 16/08/2024.
//

import UIKit

class LoginViewController: BaseViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var usernameContainer: CustomTextField!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        updateUI()
    }
    
    override func viewWillAppear(_ animated: Bool){
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }

    private func updateUI(){
        self.updateTextField(parentView: usernameContainer, label: "username", textField: usernameTextField)
    }
}

