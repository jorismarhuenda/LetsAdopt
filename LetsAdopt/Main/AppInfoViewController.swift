//
//  AppInfoViewController.swift
//  LetsAdopt
//
//  Created by marhuenda joris on 06/03/2022.
//

import UIKit
import MaterialComponents

class AppInfoViewController: UIViewController {

    @IBOutlet weak var okButton: MDCButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        okButton.layer.cornerRadius = 5.0
    }
    

    @IBAction func okAct(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
