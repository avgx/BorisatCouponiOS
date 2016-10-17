//
//  ErrorPresenter.swift
//  BorisatCoupon
//
//  Created by Herman Saprykin on 17/10/2016.
//  Copyright © 2016 BorisatCoupon. All rights reserved.
//

import UIKit

protocol ErrorPresenter {
    func show(error: Error)
}

extension ErrorPresenter {
    func show(error: Error) {
        let text = message(fromError: error)
        if let vc = self as? UIViewController {
            let alert = UIAlertController(title: nil, message: text, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default) { action in
                vc.dismiss(animated: true, completion: nil)
            })
            vc.present(alert, animated: true, completion: nil)
        } else {
            print("Error: \(text)")
        }
    }
}

private func message(fromError error: Error) -> String {
    return error.localizedDescription
}
