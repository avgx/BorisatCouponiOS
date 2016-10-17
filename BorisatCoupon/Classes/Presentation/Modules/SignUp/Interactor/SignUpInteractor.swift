//
//  SignUpSignUpInteractor.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 16/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import FirebaseAuth

class SignUpInteractor: SignUpInteractorInput {

    weak var output: SignUpInteractorOutput!

    // MARK: SignUpInteractorInput
    
    func signUp(name: String, email: String, password: String) {
        FIRAuth.auth()?.createUser(withEmail: email, password: password) { [weak self] (user: FIRUser?, error: Error?) in
            if let user = user {
                let changeRequest = user.profileChangeRequest()
                changeRequest.displayName = name
                
                changeRequest.commitChanges() { _ in
                    self?.output.signUpDidSuccess()
                }
            } else if let error = error {
                self?.output.signUpDidFail(withError: error)
            }
        }
    }
}
