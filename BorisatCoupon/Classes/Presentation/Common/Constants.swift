//
//  Constants.swift
//  BorisatCoupon
//
//  Created by Herman Saprykin on 18/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

enum Storyboard {
    enum Main {
            enum Identifiers {
            static let AuthFlow = "LoginFlowInitial"
            static let MainFlow = "MainFlowInitial"
        }
        
        enum Startup {
            enum Segues {
                static let MainFlow = "MainFlow"
                static let LoginFlow = "LoginFlow"
            }
        }
    }
}
