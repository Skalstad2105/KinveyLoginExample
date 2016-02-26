//
//  RegisterViewController.swift
//  KineyLoginExample
//
//  Created by Cato Skalstad on 26.02.2016.
//  Copyright © 2016 Marius Skalstad. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
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
    
    
    @IBAction func backPressed(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func registerButtonPressed(sender: AnyObject) {
        
        
        let username = usernameTextField.text!
        let email = emailTextField.text!
        let password = passwordTextField.text!
        
        KCSUser.userWithUsername(username, password: password, fieldsAndValues: [KCSUserAttributeEmail: email]) { (user:KCSUser!, errorOrNil: NSError!, result: KCSUserActionResult) -> Void in
            
            if errorOrNil == nil{
                
                //Signup was successful!
                print("Register was successful")
                
            }
            else
            {
                print(errorOrNil)
                
            }
            
            
            
        }
        
        
        
        
    }
    
    
    
}
