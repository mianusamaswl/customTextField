//
//  LaunchViewController.swift
//  CustomTextField
//
//  Created by Mian Usama on 20/08/2024.
//

import UIKit

class LaunchViewController: UIViewController {

    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        directTowardsLogin()
    }
    
    override func viewWillAppear(_ animated: Bool){
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false 
    }
    
    func directTowardsLogin(){
        indicator.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            self.indicator.stopAnimating()
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "LoginScreen")
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
