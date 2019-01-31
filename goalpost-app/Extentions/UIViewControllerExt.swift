//
//  UIViewControllerExt.swift
//  goalpost-app
//
//  Created by Desarrollo on 1/31/19.
//  Copyright © 2019 Dev Core. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentDetail(_ viewControllerToPresent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.15
        transition.type = .push
        transition.subtype = .fromRight
        view.window!.layer.add(transition, forKey: kCATransition)
        
        present(viewControllerToPresent, animated: false, completion: nil)
    }
    
    func presentSecondaryDetails(_ viewControllerToPresent: UIViewController ) {
        let transition = CATransition()
        transition.duration = 0.15
        transition.type = .push
        transition.subtype = .fromRight
        
        guard let presentedViewController = presentedViewController else { return }
        
        presentedViewController.dismiss(animated: false) {
            self.view.window?.layer.add(transition, forKey: kCATransition)
            self.present(viewControllerToPresent, animated: false, completion: nil)
        }
    }
    func dismissDetail() {
        let transition = CATransition()
        transition.duration = 0.15
        transition.type = .push
        transition.subtype = .fromLeft
        view.window!.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
    }
}
