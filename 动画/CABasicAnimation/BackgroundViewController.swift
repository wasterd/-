//
//  BackgroundViewController.swift
//  动画
//
//  Created by ya Liu on 2017/8/31.
//  Copyright © 2017年 wasterd. All rights reserved.
//

import UIKit

class BackgroundViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let backgroundColorLayer = CALayer()
        backgroundColorLayer.backgroundColor = UIColor.red.cgColor
        backgroundColorLayer.frame = CGRect.init(x: 100, y: 200, width: 100, height: 100)
        self.view.layer.addSublayer(backgroundColorLayer)
        
        
        //颜色动画
        let animations = CABasicAnimation(keyPath:"backgroundColor")
        animations.fromValue = UIColor.red.cgColor
        animations.toValue =  UIColor.blue.cgColor
        animations.autoreverses = true
        animations.repeatCount = MAXFLOAT
        animations.duration = 2
        backgroundColorLayer.add(animations, forKey: "backgroundColor")
        

    }
}
