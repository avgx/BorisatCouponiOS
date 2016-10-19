//
//  EmailVerificationEmailVerificationInteractor.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 18/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import FirebaseAuth

class EmailVerificationInteractor: NSObject, EmailVerificationInteractorInput {
    
    weak var output: EmailVerificationInteractorOutput!
    var timer: Timer?
    
    func checkStatus() {
        guard let user = FIRAuth.auth()!.currentUser else { fatalError() }
        
        if user.isEmailVerified == true{
            output.emailDidVerified()
        } else {
            // TODO: Find better way. Does Firebase update automaticaly user's data?
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [weak self] in
                user.reload { _ in
                    self?.checkStatus()
                }
            }
        }
    }
    
    func logout() {
        try! FIRAuth.auth()?.signOut()
    }
    
    func verifyEmail() {
        guard let user = FIRAuth.auth()!.currentUser else { fatalError() }
        
        user.sendEmailVerification(completion: nil)
    }
}
