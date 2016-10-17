//
//  SignInSignInViewController.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 16/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, SignInViewInput, UITextFieldDelegate {

    var output: SignInViewOutput!

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!

    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        output.viewIsReady()
    }
    
    // MARK: User's events
    
    @IBAction func signInButtonDidTap(_ sender: AnyObject) {
        signInActionDidTrigger()
    }
    
    // MARK: SignInViewInput
    
    func getInput() -> (email: String, password: String) {
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        return (email, password)
    }

    // MARK: UITextFieldDelegate
    
    @IBAction func textFieldEditingDidChange(_ sender: AnyObject) {
        validateInput()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case emailTextField:
            passwordTextField.becomeFirstResponder()
        case passwordTextField:
            signInActionDidTrigger()
        default:
            fatalError()
        }
        return true
    }
    
    // MARK: Helpers
    
    private func validateInput() {
        signInButton.isEnabled = false
        
        guard emailTextField.text?.isEmpty == false else { return }
        guard passwordTextField.text?.isEmpty == false else { return }
        
        signInButton.isEnabled = true
    }
    
    private func signInActionDidTrigger() {
        output.signInButtonDidTap()
    }
}
