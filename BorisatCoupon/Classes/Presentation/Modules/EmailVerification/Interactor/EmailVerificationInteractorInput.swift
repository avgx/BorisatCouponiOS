//
//  EmailVerificationEmailVerificationInteractorInput.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 18/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import Foundation

protocol EmailVerificationInteractorInput: class {
    func checkStatus()
    func verifyEmail()
    func logout()
}
