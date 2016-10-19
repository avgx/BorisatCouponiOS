//
//  CouponsListCouponsListViewController.swift
//  BorisatCoupon
//
//  Created by German Saprykin on 19/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import UIKit
import FirebaseAuth

class CouponsListViewController: UIViewController, CouponsListViewInput {

    var output: CouponsListViewOutput!

    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        output.viewIsReady()
    }

    // MARK: CouponsListViewInput

    @IBAction func logoutButtonDidTap(_ sender: AnyObject) {
        try! FIRAuth.auth()?.signOut()
        performSegue(withIdentifier: "Startup", sender: nil)
    }
}
