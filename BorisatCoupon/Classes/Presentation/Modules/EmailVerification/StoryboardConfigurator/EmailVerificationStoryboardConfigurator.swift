//
//  EmailVerificationEmailVerificationStoryboardConfigurator.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 18/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import UIKit

class EmailVerificationModuleConfigurator : NSObject {

    @IBOutlet weak var viewController: EmailVerificationViewController!

    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }

    private func configure() {
        let router = EmailVerificationRouter()
        router.viewController = viewController

        let presenter = EmailVerificationPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = EmailVerificationInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
