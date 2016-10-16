//
//  SignInSignInViewController.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 16/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, SignInViewInput {

    var output: SignInViewOutput!

    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        output.viewIsReady()
    }

    // MARK: SignInViewInput

}
