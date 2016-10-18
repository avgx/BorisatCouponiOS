//
//  StartupStartupRouter.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 18/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import UIKit

class StartupRouter: StartupRouterInput {
    weak var viewController: StartupViewController!
    
    func navigateToCoupons() {
        viewController.performSegue(withIdentifier: Storyboard.Main.Startup.Segues.MainFlow, sender: nil)
    }
    
    func navigateToEmailVerification() {
        viewController.performSegue(withIdentifier: Storyboard.Main.Startup.Segues.EmailVerification, sender: nil)
    }
    
    func navigateToLogin() {
        viewController.performSegue(withIdentifier: Storyboard.Main.Startup.Segues.LoginFlow, sender: nil)
    }
}
