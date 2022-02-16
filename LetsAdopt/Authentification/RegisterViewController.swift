//
//  RegisterViewController.swift
//  LetsAdopt
//
//  Created by marhuenda joris on 16/02/2022.
//

import UIKit
import MaterialComponents
import FlagPhoneNumber
import SCLAlertView
import ProgressHUD

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var phoneTextField: FPNTextField!
    @IBOutlet weak var usernameTextField: MDCOutlinedTextField!
    @IBOutlet weak var passwordTextField: MDCOutlinedTextField!
    @IBOutlet weak var retypePasswordTextField: MDCOutlinedTextField!
    @IBOutlet weak var registerButton: MDCButton!
    @IBOutlet weak var dummyPhoneTextField: MDCOutlinedTextField!
    
    let listController: FPNCountryListViewController = FPNCountryListViewController(style: .grouped)
    var phoneNumber = ""
    var isCorrect = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initView()
    }
    
    func initView() {
        let textFields: [MDCOutlinedTextField] = [usernameTextField, passwordTextField, retypePasswordTextField]
        let leadingIconNames: [String] = [ "ic-blue-username", "ic-blue-password", "ic-blue-password"]
        let labelForTFs: [String] = [ "Username", "Password", "Retype password"]
        
        registerButton.layer.cornerRadius = 5.0
        
        for i in 0..<textFields.count {
            textFields[i].setOutlineColor(UIColor(named: "AccentColor")!, for: .editing)
            textFields[i].setOutlineColor(UIColor(named: "AppSecondaryColor")!, for: .normal)
            textFields[i].leadingView = UIImageView(image: UIImage(named: leadingIconNames[i]))
            textFields[i].leadingViewMode = .always
            textFields[i].label.text = labelForTFs[i]
            textFields[i].setNormalLabelColor(UIColor(named: "AppGrayColor")!, for: .normal)
            textFields[i].setFloatingLabelColor(UIColor(named: "AccentColor")!, for: .editing)
            textFields[i].setFloatingLabelColor(UIColor(named: "AppSecondaryColor")!, for: .normal)
        }
        
        dummyPhoneTextField.setOutlineColor(UIColor(named: "AccentColor")!, for: .editing)
        dummyPhoneTextField.setOutlineColor(UIColor(named: "AppSecondaryColor")!, for: .normal)
        dummyPhoneTextField.label.text = "Phone"
        dummyPhoneTextField.setNormalLabelColor(UIColor(named: "AppGrayColor")!, for: .normal)
        dummyPhoneTextField.setFloatingLabelColor(UIColor(named: "AccentColor")!, for: .editing)
        dummyPhoneTextField.setFloatingLabelColor(UIColor(named: "AppSecondaryColor")!, for: .normal)

        phoneTextField.delegate = self
        
        phoneTextField.layer.borderWidth = 0
        phoneTextField.layer.borderColor = UIColor(named: "AccentColor")?.withAlphaComponent(0.0).cgColor
        phoneTextField.layer.cornerRadius = 5.0
        
        phoneTextField.setFlag(key: .VN)
        phoneTextField.delegate = self
        
        phoneTextField.displayMode = .list // .picker by default

        listController.setup(repository: phoneTextField.countryRepository)
        listController.didSelect = { [weak self] country  in
            self?.phoneTextField.setFlag(countryCode: country.code)
        }
    }
    
    @IBAction func dummyPhoneBeginEdit(_ sender: Any) {
        dummyPhoneTextField.text = " "
        dummyPhoneTextField.setOutlineColor(UIColor(named: "AccentColor")!, for: .normal)
        dummyPhoneTextField.setFloatingLabelColor(UIColor(named: "AccentColor")!, for: .normal)
    }
    
    @IBAction func dummyPhoneEditEnd(_ sender: Any) {
        if phoneTextField.text! == "" {
            dummyPhoneTextField.text = ""
            dummyPhoneTextField.setOutlineColor(UIColor(named: "AppSecondaryColor")!, for: .normal)

            dummyPhoneTextField.setNormalLabelColor(UIColor(named: "AppGrayColor")!, for: .normal)
            dummyPhoneTextField.setFloatingLabelColor(UIColor(named: "AppSecondaryColor")!, for: .normal)
        }
    }
    
    @IBAction func registerAct(_ sender: Any) {
            
    }
    
    @IBAction func loginAct(_ sender: Any) {
        
    }
    
    func isSame(_ password: String, _ retype: String) -> Bool {
        return password == retype
    }

    func isValidPassword(testStr:String?) -> Bool {
        guard testStr != nil else { return false }
     
        // at least one uppercase,
        // at least one digit
        // at least one lowercase
        // 8 characters total
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
        return passwordTest.evaluate(with: testStr)
    }
    
    
}

extension RegisterViewController: FPNTextFieldDelegate {
   func fpnDisplayCountryList() {
    let navigationViewController = UINavigationController(rootViewController: listController)

      listController.title = "Countries"

      self.present(navigationViewController, animated: true, completion: nil)
   }

  
   func fpnDidSelectCountry(name: String, dialCode: String, code: String) {
    print(name, dialCode, code) // Output "France", "+33", "FR"
    
}

  
   func fpnDidValidatePhoneNumber(textField: FPNTextField, isValid: Bool) {
        
      if isValid {
        phoneNumber = textField.getFormattedPhoneNumber(format: .E164)!       // Output "681053437"
        print(phoneNumber)
        
    
      } else {
           
      }
   }
}
