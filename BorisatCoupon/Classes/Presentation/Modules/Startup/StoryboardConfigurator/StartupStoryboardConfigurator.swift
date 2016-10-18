//
//  StartupStartupStoryboardConfigurator.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 18/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import UIKit

class StartupModuleConfigurator : NSObject {

    @IBOutlet weak var viewController: StartupViewController!

    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }

    private func configure() {
        let router = StartupRouter()
        router.viewController = viewController

        let presenter = StartupPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = StartupInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
