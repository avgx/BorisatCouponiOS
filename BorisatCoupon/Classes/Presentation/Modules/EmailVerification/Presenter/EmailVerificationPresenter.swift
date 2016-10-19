//
//  EmailVerificationEmailVerificationPresenter.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 18/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

class EmailVerificationPresenter: EmailVerificationViewOutput, EmailVerificationInteractorOutput {

    weak var view: EmailVerificationViewInput!
    var interactor: EmailVerificationInteractorInput!
    var router: EmailVerificationRouterInput!

    // MARK: EmailVerificationViewOutput

    func viewIsReady() {
        interactor.checkStatus()
    }
    
    func logoutButtonDidTap() {
        interactor.logout()
        router.navigateToLogin()
    }
    
    func resendButtonDidTap() {
        interactor.verifyEmail()
    }
    
    // MARK: EmailVerificationInteractorOutput
    
    func emailDidVerified() {
        router.navigateToCoupons()
    }
}
