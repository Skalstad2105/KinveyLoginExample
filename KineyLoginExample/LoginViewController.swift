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
    @IBOutlet weak var indicatorActivity: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        indicatorActivity.hidden = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func loginButton(sender: AnyObject) {
        indicatorActivity.hidden = false
        indicatorActivity.startAnimating()
        
        let email = emailTextField.text!
        let password = passwordTextField.text!
        
        KCSUser.loginWithUsername(email, password: password) { (user:KCSUser!, errorOrNil:NSError!, result) -> Void in
            
            if errorOrNil == nil
            {
                self.indicatorActivity.stopAnimating()
                //Login was successful
                let viewController:UITabBarController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("main") as! UITabBarController
                
                self.presentViewController(viewController, animated: true, completion: nil)
                
            }
            else
            {
                self.indicatorActivity.hidden = true
                self.indicatorActivity.stopAnimating()
                if errorOrNil.code == 401
                {
                    self.getErrorMessages("Incorrect information", message: "Incorrect username or password")
                    
                }
                
            }
        }
    
        
    }
    
    func getErrorMessages(title:String,message:String)
    {
        let alert = UIAlertController(title: "\(title)", message: "\(message)", preferredStyle: UIAlertControllerStyle.Alert)
        
        let ok = UIAlertAction(title: "OK", style: .Default, handler: nil)
        
        alert.addAction(ok)
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    
    
    
    
}
