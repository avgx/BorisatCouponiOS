//
//  SignInSignInInteractor.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 16/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import FirebaseAuth

class SignInInteractor: SignInInteractorInput {
    
    weak var output: SignInInteractorOutput!
    
    func signIn(withEmail email: String, password: String) {
        FIRAuth.auth()?.signIn(withEmail: email, password: password) { [weak output] (user, error) in
            if let error = error {
                output?.signInDidFail(withError: error)
            } else if user?.isEmailVerified == true {
                output?.signInDidSuccess()
            } else if user?.isEmailVerified == false {
                output?.emailVerificationNeeded()
            }
        }
    }
    
    
}
