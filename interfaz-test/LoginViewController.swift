//
//  ViewController.swift
//  interfaz-test
//
//  Created by Emmanuel on 9/7/19.
//  Copyright © 2019 Emmanuel. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginTapped(_ sender: Any) {
        let mainTabController = storyboard?.instantiateViewController(withIdentifier: "MainTabController") as! MainTabController
        
        //tabBarController.selectedViewController  = tabBarController.viewControllers?[Tabs.Middle.rawValue]
        mainTabController.selectedViewController = mainTabController.viewControllers?[0]
        
        present(mainTabController, animated: true, completion: nil)
        
    }
    

}

