//
//  SignUpSignUpViewInput.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 16/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

protocol SignUpViewInput: class {

    func getInput() -> (name:String, email: String, password: String)
    
}
