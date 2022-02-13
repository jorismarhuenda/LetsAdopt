//
//  WelcomeVC.swift
//  LetsAdopt
//
//  Created by marhuenda joris on 13/02/2022.
//

import UIKit
import MaterialComponents

class WelcomeVC: UIViewController {
    // MARK: -Outlets
    
    @IBOutlet weak var registerButton: MDCButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        registerButton.layer.cornerRadius = 5.0
    }
    
    @IBAction func registerAct (_ sender: Any) {
      
    }
    
    @IBAction func loginAct (_ sender: Any) {
        
    }
}
