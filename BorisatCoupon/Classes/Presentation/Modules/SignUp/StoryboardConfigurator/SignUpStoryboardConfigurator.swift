//
//  SignUpSignUpStoryboardConfigurator.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 16/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import UIKit

class SignUpModuleConfigurator : NSObject {

    @IBOutlet weak var viewController: SignUpViewController!

    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }

    private func configure() {
        let router = SignUpRouter()
        router.viewController = viewController

        let presenter = SignUpPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = SignUpInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
