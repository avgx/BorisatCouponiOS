//
//  CouponsListCouponsListInteractorOutput.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 19/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import FirebaseDatabase

protocol CouponsListInteractorOutput: class {
    func didUpdate(coupons: [Coupon])
}
