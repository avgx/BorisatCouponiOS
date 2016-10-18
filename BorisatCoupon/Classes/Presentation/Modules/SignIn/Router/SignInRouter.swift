//
//  SignInSignInRouter.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 16/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

class SignInRouter: SignInRouterInput {
    weak var viewController: SignInViewController!
    
    func navigateToEmailVerification() {
        viewController.performSegue(withIdentifier: Storyboard.Main.SignIn.Segues.EmailVerification, sender: nil)
    }
}
