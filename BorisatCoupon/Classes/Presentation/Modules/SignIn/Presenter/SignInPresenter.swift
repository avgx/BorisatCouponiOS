//
//  SignInSignInPresenter.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 16/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

class SignInPresenter: SignInViewOutput, SignInInteractorOutput {

    weak var view: SignInViewInput!
    var interactor: SignInInteractorInput!
    var router: SignInRouterInput!

    // MARK: SignInViewOutput

    func viewIsReady() {

    }

    func signInButtonDidTap() {
        let input = view.getInput()
        interactor.signIn(withEmail: input.email, password: input.password)
    }
    
    // MARK: SignInInteractorOutput
    
    func signInDidFail(withError error: Error) {
        view.show(error: error)
    }
    
    func signInDidSuccess() {
        router.navigateToCoupons()
    }
    
    func emailVerificationNeeded() {
        router.navigateToEmailVerification()
    }
}
