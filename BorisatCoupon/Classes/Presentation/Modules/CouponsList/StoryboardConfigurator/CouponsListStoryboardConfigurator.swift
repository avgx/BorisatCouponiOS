//
//  CouponsListCouponsListStoryboardConfigurator.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 19/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import UIKit

class CouponsListModuleConfigurator : NSObject {

    @IBOutlet weak var viewController: CouponsListViewController!

    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }

    private func configure() {
        let router = CouponsListRouter()
        router.viewController = viewController

        let presenter = CouponsListPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = CouponsListInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
