//
//  StartupStartupPresenter.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 18/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import FirebaseAuth

class StartupPresenter: StartupViewOutput, StartupInteractorOutput {
    
    weak var view: StartupViewInput!
    var interactor: StartupInteractorInput!
    var router: StartupRouterInput!
    
    // MARK: StartupViewOutput
    
    func viewIsReady() {
        if let user = FIRAuth.auth()?.currentUser {
            user.reload { _ in
                if user.isEmailVerified {
                    self.router.navigateToCoupons()
                } else {
                    self.router.navigateToEmailVerification()
                }
            }
        } else {
            router.navigateToLogin()
        }
    }
    
    // MARK: StartupInteractorOutput
    
}
