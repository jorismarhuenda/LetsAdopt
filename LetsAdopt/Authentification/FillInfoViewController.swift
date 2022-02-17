//
//  FillInfoViewController.swift
//  LetsAdopt
//
//  Created by marhuenda joris on 17/02/2022.
//

import UIKit
import MaterialComponents
import BottomPopUpView
import Firebase
import FirebaseStorage
import BCrypt
import Photos
import ALCameraViewController
import SCLAlertView
import ProgressHUD

class FillInfoViewController: UIViewController {
    
    @IBOutlet weak var avtPickerButton: UIButton!
    @IBOutlet weak var userFullNameTextField: MDCOutlinedTextField!
    @IBOutlet weak var emailTextField: MDCOutlinedTextField!
    @IBOutlet weak var dobTextField: MDCOutlinedTextField!
    @IBOutlet weak var genderTextField: MDCOutlinedTextField!
    @IBOutlet weak var addressTextField: MDCOutlinedTextField!
    @IBOutlet weak var finishButton: MDCButton!
    @IBOutlet weak var backButton: UIButton!
    
    let dateFormatter = DateFormatter()
    let genders: [String] = ["Male", "Female"]
    
    var bottomPopUpView: BottomPopUpView!
    var datePicker: UIDatePicker!
    var genderPickerView: UIPickerView!
    
    var username = ""
    var userFullName = ""
    var userEmail = ""
    var password = ""
    var phone = ""
    var profileImageURL = ""
    var UID = ""
    var token = ""
    var isCorrect = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateFormat = "MMM dd, yyyy"
        
        genderPickerView = UIPickerView()
        genderPickerView.dataSource = self
        genderPickerView.delegate = self
        
        initView()
        
        print(token)
    }
    
    func initView() {
        
        let textFields: [MDCOutlinedTextField] = [userfullNameTextField, emailTextField, dobTextField, genderTextField, addressTextField]
        let leadingIconNames: [String] = ["ic-blue-username", "ic-blue-email", "ic-blue-dob", "ic-blue-gender", "ic-blue-address"]
        let labelForTFs: [String] = ["Your full name", "Email", "Date of birth", "Gender", "Address"]
        
        finishButton.layer.cornerRadius = 5.0
        avtPickerButton.layer.cornerRadius = 68.0
        
        backButton.layer.borderWidth = 1
        backButton.layer.cornerRadius = 5.0
        backButton.layer.borderColor = UIColor(named: "AppRedColor")?.cgColor
        
        for i in 0..<textFields.count {
            textFields[i].setOutlineColor(UIColor(named: "AccentColor")!, for: .editing)
            textFields[i].setOutlineColor(UIColor(named: "AppSecondaryColor")!, for: .normal)
            textFields[i].leadingView = UIImageView(image: UIImage(named: leadingIconNames[i]))
            textFields[i].leadingViewMode = .always
            textFields[i].label.text = labelForTFs[i]
            textFields[i].setNormalLabelColor(UIColor(named: "AppGrayColor")!, for: .normal)
            textFields[i].setFloatingLabelColor(UIColor(named: "AccentColor")!, for: .editing)
        }

        userfullNameTextField.text = userFullName
        emailTextField.text = userEmail
        
    }
}
