//
//  EmailVerificationEmailVerificationViewController.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 18/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import UIKit

class EmailVerificationViewController: UIViewController, EmailVerificationViewInput {

    var output: EmailVerificationViewOutput!

    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        output.viewIsReady()
    }

    // MARK: EmailVerificationViewInput

}
