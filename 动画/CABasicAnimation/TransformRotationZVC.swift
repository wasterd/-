//
//  TransformRotationZVC.swift
//  动画
//
//  Created by ya Liu on 2017/8/31.
//  Copyright © 2017年 wasterd. All rights reserved.
//

import UIKit

class TransformRotationZVC: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let rotationxLayer = CALayer()
        rotationxLayer.backgroundColor = UIColor.red.cgColor
        rotationxLayer.frame = CGRect.init(x: 100, y: 200, width: 100, height: 100)
        self.view.layer.addSublayer(rotationxLayer)
        
        let animation = CABasicAnimation.init(keyPath: "transform.rotation.z")
        animation.fromValue = 0.0
        animation.toValue =  6.0  * M_PI
        animation.duration = 4
        animation.repeatCount = 10000
        animation.autoreverses = true
        
        rotationxLayer.add(animation, forKey:"rotationx")
        
    }


}
