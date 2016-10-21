//
//  CouponsListCouponsListPresenter.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 19/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

class CouponsListPresenter: CouponsListViewOutput, CouponsListInteractorOutput {

    weak var view: CouponsListViewInput!
    var interactor: CouponsListInteractorInput!
    var router: CouponsListRouterInput!

    // MARK: CouponsListViewOutput

    func viewIsReady() {
        interactor.fetchCoupons()
    }

    // MARK: CouponsListInteractorOutput
    
    final func didUpdate(coupons: [Coupon]) {
        print(coupons)
    }
}
