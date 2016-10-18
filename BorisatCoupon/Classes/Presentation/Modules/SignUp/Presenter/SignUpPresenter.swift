//
//  SignUpSignUpPresenter.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 16/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

class SignUpPresenter: SignUpViewOutput, SignUpInteractorOutput {

    weak var view: SignUpViewInput!
    var interactor: SignUpInteractorInput!
    var router: SignUpRouterInput!

    // MARK: SignUpViewOutput

    func signInButtonDidTap() {
        
    }
    
    func signUpButtonDidTap() {
        let input = view.getInput()
        interactor.signUp(name: input.name, email: input.email, password: input.password)
    }
    
    // MARK: SignUpInteractorOutput
    
    func signUpDidFail(withError error: Error) {
        view.show(error: error)
    }
    
    func signUpDidSuccess() {
        router.navigateToEmailVerification()
    }
}
