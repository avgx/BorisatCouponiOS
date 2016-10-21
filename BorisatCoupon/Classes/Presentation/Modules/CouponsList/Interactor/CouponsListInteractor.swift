//
//  CouponsListCouponsListInteractor.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 19/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import FirebaseDatabase
import SwiftyJSON

fileprivate typealias FIRDataSnapshotHandler = ((FIRDataSnapshot) -> Void)

class CouponsListInteractor: CouponsListInteractorInput {

    weak var output: CouponsListInteractorOutput!
    
    let ref = FIRDatabase.database().reference()

    func fetchCoupons() {
        fetch(ref, map(output.didUpdate))
    }
}

struct Coupon {
    let id: String
    let price: Double
    let name: String
    let imageAddress: URL
}

fileprivate func fetch(_ ref: FIRDatabaseReference, _ f: @escaping FIRDataSnapshotHandler) {
    ref.child("coupons/agoda_com").observe(.value, with: f)
}

fileprivate func map(_ f: @escaping (([Coupon]) -> Void)) -> FIRDataSnapshotHandler {
    return { snapshot in
        let json = JSON(snapshot.value)
        
        var coupons = [Coupon]()
        
        for (couponId, couponJSON) in json {
            guard let name = couponJSON["name"].string else { continue }
            guard let imageURL = URL(string: couponJSON["img_url"].stringValue) else { continue }
            
            let coupon = Coupon(id: couponId, price: 200, name: name, imageAddress: imageURL)
            
            coupons.append(coupon)
        }
        
        f(coupons)
    }
}
