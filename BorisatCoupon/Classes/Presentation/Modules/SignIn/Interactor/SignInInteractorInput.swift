//
//  SignInSignInInteractorInput.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 16/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import Foundation

protocol SignInInteractorInput: class {
    func signIn(withEmail email: String, password: String)
}
