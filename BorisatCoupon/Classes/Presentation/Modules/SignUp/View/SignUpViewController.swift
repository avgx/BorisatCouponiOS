//
//  SignUpSignUpViewController.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 16/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, SignUpViewInput, UITextFieldDelegate {
    
    var output: SignUpViewOutput!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signupButton: UIButton!
    
    // MARK: Life cycle
    
    // MARK: SignUpViewInput

    func getInput() -> (name: String, email: String, password: String) {
        let name = nameTextField.text ?? ""
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        return (name, email, password)
    }
    
    // MARK: User's events
    
    @IBAction func viewDidTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func signUpButtonDidTap(_ sender: AnyObject) {
        signUpActionDidTrigger()
    }

    // MARK: UITextFieldDelegate

    @IBAction func textFieldEditingDidChange(_ sender: AnyObject) {
        validateInput()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case nameTextField:
            emailTextField.becomeFirstResponder()
        case emailTextField:
            passwordTextField.becomeFirstResponder()
        case passwordTextField:
            signUpActionDidTrigger()
        default:
            fatalError()
        }
        return true
    }
    
    // MARK: Helpers
    
    private func validateInput() {
        signupButton.isEnabled = false

        guard nameTextField.text?.isEmpty == false else { return }
        guard emailTextField.text?.isEmpty == false else { return }
        guard passwordTextField.text?.isEmpty == false else { return }
        
        signupButton.isEnabled = true
    }
    
    private func signUpActionDidTrigger() {
        output.signUpButtonDidTap()
    }
}
