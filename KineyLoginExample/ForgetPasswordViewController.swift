//
//  ForgetPasswordViewController.swift
//  KineyLoginExample
//
//  Created by Cato Skalstad on 26.02.2016.
//  Copyright © 2016 Marius Skalstad. All rights reserved.
//

import UIKit

class ForgetPasswordViewController: UIViewController {
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func backPressed(sender: AnyObject) {
        
         self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func resetPassword(sender: AnyObject) {
        
        let username = usernameTextField.text!
        
        KCSUser.sendPasswordResetForUser(username) { (emailSent: Bool, errorOrNil: NSError!) -> Void in
            
            if errorOrNil == nil
            {
                print("Sucessfull sendt email!")
            }
            else
            {
                print(errorOrNil)
            }
        }
        
        
    }
    
    

}
