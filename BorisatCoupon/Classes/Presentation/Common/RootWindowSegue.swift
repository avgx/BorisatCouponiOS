//
//  ReplaceSegue.swift
//  BorisatCoupon
//
//  Created by Herman Saprykin on 18/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import UIKit

class RootWindowSegue: UIStoryboardSegue {
    
    override func perform() {
        if let window = UIApplication.shared.delegate?.window {
            window?.rootViewController = destination
        }
    }
    
}
