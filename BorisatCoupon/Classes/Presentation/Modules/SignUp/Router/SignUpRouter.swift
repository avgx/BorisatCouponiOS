//
//  SignUpSignUpRouter.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 16/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

class SignUpRouter: SignUpRouterInput {
    weak var viewController: SignUpViewController!
    
    func navigateToEmailVerification() {
        viewController.performSegue(withIdentifier: Storyboard.Main.SignUp.Segues.EmailVerification, sender: nil)
    }
}
