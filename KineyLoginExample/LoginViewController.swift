//
//  LoginViewController.swift
//  KineyLoginExample
//
//  Created by Cato Skalstad on 26.02.2016.
//  Copyright © 2016 Marius Skalstad. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func loginButton(sender: AnyObject) {
        
        let email = emailTextField.text!
        let password = passwordTextField.text!
        
        KCSUser.loginWithUsername(email, password: password) { (user:KCSUser!, errorOrNil:NSError!, result) -> Void in
            
            if errorOrNil == nil
            {
                print("Login was successful!")
            }
            else
            {
                print(errorOrNil)
            }
        }
    
        
    }
    
    
    
    
}
