//
//  CouponsListCouponsListInteractor.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 19/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import FirebaseDatabase

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
        guard let json = snapshot.value as? [String: AnyObject] else { fatalError() }
        
        var coupons = [Coupon]()
        
        for (couponId, couponJSON) in json {
            let name = couponJSON["name"] as! String
            let imageURL = URL(string: couponJSON["img_url"] as! String)!
            
            let coupon = Coupon(id: couponId, price: 200, name: name, imageAddress: imageURL)
            
            coupons.append(coupon)
        }
        
        f(coupons)
    }
}
