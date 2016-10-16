//
//  SignInSignInStoryboardConfigurator.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 16/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import UIKit

class SignInModuleConfigurator : NSObject {

    @IBOutlet var viewController: SignInViewController!

    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }

    private func configure() {
        let router = SignInRouter()
        router.viewController = viewController

        let presenter = SignInPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = SignInInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
