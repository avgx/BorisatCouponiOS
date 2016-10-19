//
//  EmailVerificationEmailVerificationViewOutput.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 18/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

protocol EmailVerificationViewOutput: class {
    func viewIsReady()
    func resendButtonDidTap()
    func logoutButtonDidTap()
}
