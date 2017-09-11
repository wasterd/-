//
//  BoundsViewController.swift
//  动画
//
//  Created by ya Liu on 2017/8/31.
//  Copyright © 2017年 wasterd. All rights reserved.
//

import UIKit

class BoundsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let bounds = CALayer()
        bounds.backgroundColor = UIColor.red.cgColor
        bounds.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        self.view.layer.addSublayer(bounds)
        
        
        let animations = CABasicAnimation(keyPath: "bounds")
        animations.duration = 3.0
        animations.toValue = CGRect(x: 100, y: 100, width: 200, height: 200)
        animations.fromValue = CGRect(x: 0, y: 0, width: 20, height: 20)
        animations.byValue = bounds.bounds
        animations.autoreverses = true
        animations.repeatCount = 10000
        bounds.add(animations, forKey: "bounds")
    }



}
