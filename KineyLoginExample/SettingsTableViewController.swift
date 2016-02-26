//
//  SettingsTableViewController.swift
//  KineyLoginExample
//
//  Created by Cato Skalstad on 26.02.2016.
//  Copyright © 2016 Marius Skalstad. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func logoutButton(sender: AnyObject) {
        
        let alert2 = UIAlertController(title:"Are your sure?", message: "Would you really log out?", preferredStyle: UIAlertControllerStyle.Alert)
        
        let saveAction = UIAlertAction(title: "Yes", style: UIAlertActionStyle.Destructive)
            {
                (ACTION: UIAlertAction) -> Void in
                
                //Logout user
                KCSUser.activeUser().logout()
                let viewController:UINavigationController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("login") as! UINavigationController
                
                self.presentViewController(viewController, animated: true, completion: nil)
                
                
        }
        let cancelAction = UIAlertAction(title:"No", style: UIAlertActionStyle.Default){
            (ACTION: UIAlertAction) -> Void in
        }
        
        alert2.addAction(saveAction)
        alert2.addAction(cancelAction)
        
        
        
        presentViewController(alert2, animated: true, completion: nil)
        
    }
    
    
    

}
