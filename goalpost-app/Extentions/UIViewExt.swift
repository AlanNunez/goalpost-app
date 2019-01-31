//
//  UIViewExt.swift
//  goalpost-app
//
//  Created by Desarrollo on 1/31/19.
//  Copyright © 2019 Dev Core. All rights reserved.
//

import UIKit

extension UIView {
    func bindToKeyboard() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }
    
    @objc func keyboardWillChange(_ notification: NSNotification) {
        let duration = notification.userInfo![UIResponder.keyboardAnimationDurationUserInfoKey] as! Double
        let curve = notification.userInfo![UIResponder.keyboardAnimationCurveUserInfoKey] as! UInt
        let startingFrame = (notification.userInfo![UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        let endingFrame = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let deltaY = endingFrame.origin.y - startingFrame.origin.y
        let deltaYi = deltaY + (window?.safeAreaInsets.bottom ?? 10)
        UIView.animateKeyframes(withDuration: duration, delay: 0.0, options: KeyframeAnimationOptions(rawValue: curve), animations: { self.frame.origin.y += deltaYi  }, completion: nil)
    }
}
