//
//  ViewController.swift
//  ios-storekit-SKStoreProductViewController-demo
//
//  Created by Kushida　Eiji on 2017/04/27.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit
import StoreKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapShowAppStore(_ sender: UIButton) {
        showProductViewController()
    }

    /// AppStoreへ遷移する
    /// https://itures.apple.com/jp/app/<アプリ名>/id<アプリID>?mt=8
    private func showProductViewController() {

        let vc = SKStoreProductViewController()
        vc.delegate = self

        present(vc, animated: true) {

            vc.loadProduct(withParameters: [SKStoreProductParameterITunesItemIdentifier: "972439368"],
                           completionBlock: { (result, error) in

                            //DoSomehing

                            if !result {
                                print(error.debugDescription)
                            }
                            print("done")
            })
        }
    }
}

// MARK: - SKStoreProductViewControllerDelegate
extension ViewController: SKStoreProductViewControllerDelegate {

    func productViewControllerDidFinish(_ viewController: SKStoreProductViewController) {
        dismiss(animated: true, completion: nil)
    }
}

