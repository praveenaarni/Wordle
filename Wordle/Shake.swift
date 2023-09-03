//
//  Shake.swift
//  Wordle
//
//  Created by Praveena Arni on 4/12/23.
//

import UIKit

class Shake: UITextField{
    
    func shake(){
        print("Shaking")
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 3
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4.0, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4.0, y: self.center.y))
        self.layer.add(animation, forKey: "position")
    }
}
