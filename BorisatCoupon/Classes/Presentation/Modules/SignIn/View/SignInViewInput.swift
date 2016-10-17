//
//  SignInSignInViewInput.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 16/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

protocol SignInViewInput: class, ErrorPresenter {
    func getInput() -> (email: String, password: String)
}
