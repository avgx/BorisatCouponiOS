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
        let user = FIRAuth.auth()?.currentUser
        switch (user) {
        case (let user) where user?.isEmailVerified == true:
            router.navigateToCoupons()
        case (let user) where user?.isEmailVerified == false:
            router.navigateToEmailVerification()
        default:
            router.navigateToLogin()
        }
    }
    
    // MARK: StartupInteractorOutput
    
}
