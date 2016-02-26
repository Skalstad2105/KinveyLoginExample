//
//  MainViewController.swift
//  KineyLoginExample
//
//  Created by Cato Skalstad on 26.02.2016.
//  Copyright © 2016 Marius Skalstad. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        if KCSUser.activeUser() == nil
        {
            //User is not logged in
            let viewController:UINavigationController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("login") as! UINavigationController
            
            self.presentViewController(viewController, animated: true, completion: nil)
            
        }
        else
        {
            //User is logged in
        }
        
    }
    
    
    @IBAction func logOut(sender: AnyObject) {
        
        
        
    }
    


}
