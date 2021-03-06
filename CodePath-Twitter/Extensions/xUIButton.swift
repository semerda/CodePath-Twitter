//
//  xButton.swift
//  CodePath-Twitter
//
//  Created by Ernest on 10/29/16.
//  Copyright © 2016 Purpleblue Pty Ltd. All rights reserved.
//

import UIKit

extension UIButton {
    
    func bounceAndChange(imageName: String) {
        // Spring Bounce the UIButton
        self.transform = CGAffineTransform(scaleX: 0, y: 0)
        UIView.animate(withDuration: 1.0,
                       delay: 0.5,
                       usingSpringWithDamping: 0.5,
                       initialSpringVelocity: 10,
                       options: .curveLinear,
                       animations: {
                        self.transform = CGAffineTransform.identity
        },
                       completion: nil
        )
        
        // Change image to selected state
        if imageName.characters.count > 0 {
            self.setImage(UIImage(named: imageName), for: .normal)
        }
    }
    
}
