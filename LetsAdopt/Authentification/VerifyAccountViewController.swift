//
//  VerifyAccountViewController.swift
//  LetsAdopt
//
//  Created by marhuenda joris on 16/02/2022.
//

import UIKit
import OTPFieldView
import MaterialComponents

class VerifyAccountViewController: UIViewController {
    
    @IBOutlet weak var verifyButton: MDCButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var instructionLabel: UILabel!
    
    var countryCode = ""
    var phoneNumber = ""
    var otpCode: String?
    
    @IBOutlet weak var otpTextFieldView: OTPFieldView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initView()
    }
    
    func initView() {
        self.otpTextFieldView.fieldsCount = 6
        self.otpTextFieldView.fieldBorderWidth = 1
        self.otpTextFieldView.defaultBorderColor = UIColor(named: "AppSecondaryColor")!
        self.otpTextFieldView.filledBorderColor = UIColor(named: "AccentColor")!
        self.otpTextFieldView.cursorColor = UIColor(named: "AppRedColor")!
        self.otpTextFieldView.displayType = .roundedCorner
        self.otpTextFieldView.fieldSize = 40
        self.otpTextFieldView.separatorSpace = 8
        self.otpTextFieldView.shouldAllowIntermediateEditing = false
        self.otpTextFieldView.delegate = self
        self.otpTextFieldView.initializeUI()
        
        verifyButton.layer.cornerRadius  = 5.0
        
        backButton.layer.borderWidth = 1
        backButton.layer.cornerRadius = 5.0
        backButton.layer.borderColor = UIColor(named: "AppRedColor")?.cgColor
    }
    
    @IBAction func resendAct(_ sender: Any) {
        VerifyAPI.sendVerificationCode(countryCode, phoneNumber)
        
        instructionLabel.text = "Enter resent OTP code to verify"
    }
    
    @IBAction func backAct(_ sender: Any) {
        
    }
    
    @IBAction func verifyAct(_ sender: Any) {
        
    }
}

extension VerifyAccountViewController: OTPFieldViewDelegate {
    func hasEnteredAllOTP(hasEnteredAll hasEntered: Bool) -> Bool {
        print("Has entered all OTP? \(hasEntered)")
        return false
    }
    
    func shouldBecomeFirstResponderForOTP(otpTextFieldIndex index: Int) -> Bool {
        return true
    }
        
    func enteredOTP(otp otpString: String) {
        otpCode = otpString
        print("OTPString: \(otpCode!)")
    }
}
