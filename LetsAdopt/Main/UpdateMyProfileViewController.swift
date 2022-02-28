//
//  UpdateMyProfileViewController.swift
//  LetsAdopt
//
//  Created by marhuenda joris on 28/02/2022.
//

import UIKit
import MaterialComponents
import BottomPopUpView
import Firebase
import FirebaseStorage
import BCrypt
import Photos
import ALCameraViewController
import Nuke
import FlagPhoneNumber
import SCLAlertView
import ProgressHUD

protocol UpdateInfoDelegate: class {
    func updateChangeInfo()
}

class UpdateMyProfileViewController: UIViewController {

    @IBOutlet weak var avtPickerButton: UIButton!
    @IBOutlet weak var userfullNameTextField: MDCOutlinedTextField!
    @IBOutlet weak var emailTextField: MDCOutlinedTextField!
    @IBOutlet weak var dobTextField: MDCOutlinedTextField!
    @IBOutlet weak var genderTextField: MDCOutlinedTextField!
    @IBOutlet weak var addressTextField: MDCOutlinedTextField!
    @IBOutlet weak var finishButton: MDCButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBOutlet weak var phoneTextField: FPNTextField!
    @IBOutlet weak var dummyPhoneTextField: MDCOutlinedTextField!
    
}
