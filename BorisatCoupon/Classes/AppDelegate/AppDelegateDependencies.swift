//
//  AppDelegateDependencies.swift
//  BorisatCoupon
//
//  Created by Herman Saprykin on 16/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import Firebase

class AppStartupConfigurator {
    
    func configure() {
        configureFirebase()
        configureApperance()
    }
    
    private func configureFirebase() {
        FIRApp.configure()
    }
    
    private func configureApperance() {
        UINavigationBar.appearance().barTintColor = UIColor.bcAzure
    }
}
