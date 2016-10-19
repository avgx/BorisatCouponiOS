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
                self?.signUpDidSuccess(withUser: user, name: name)
            } else if let error = error {
                self?.signUpDidFail(withError: error)
            }
        }
    }
    
    private func signUpDidSuccess(withUser user: FIRUser, name: String) {
        let group = DispatchGroup()
        var lastError: Error?
        
        group.enter()
        let changeRequest = user.profileChangeRequest()
        changeRequest.displayName = name
        
        changeRequest.commitChanges() { error in
            lastError = lastError ?? error
            group.leave()
        }
        
        group.enter()
        user.sendEmailVerification { error in
            lastError = lastError ?? error
            group.leave()
        }
        
        group.notify(queue: DispatchQueue.main) { [weak output] in
            if let error = lastError {
                output?.signUpDidFail(withError: error)
            } else {
                output?.signUpDidSuccess()
            }
        }
    }
    
    private func signUpDidFail(withError error: Error) {
        output.signUpDidFail(withError: error)
    }
    
    
}
