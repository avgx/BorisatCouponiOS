//
//  EmailVerificationEmailVerificationRouter.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 18/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

class EmailVerificationRouter: EmailVerificationRouterInput {
    weak var viewController: EmailVerificationViewController!
    
    func navigateToCoupons() {
        viewController.performSegue(withIdentifier: Storyboard.Main.EmailVerification.Segues.MainFlow, sender: nil)
    }
    
    func navigateToLogin() {
        viewController.performSegue(withIdentifier: Storyboard.Main.EmailVerification.Segues.LoginFlow, sender: nil)
    }
}
