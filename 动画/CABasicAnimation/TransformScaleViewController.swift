//
//  TransformScaleViewController.swift
//  动画
//
//  Created by ya Liu on 2017/8/31.
//  Copyright © 2017年 wasterd. All rights reserved.
/********************
 transform.scale
 x轴，y轴同时按比例缩放：
 *******************/

import UIKit

class TransformScaleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        let scaleLayer = CALayer.init()
        scaleLayer.backgroundColor = UIColor.blue.cgColor
        scaleLayer.frame = CGRect.init(x: 100, y: 100, width: 50, height: 50)
        scaleLayer.cornerRadius = 25;
        self.view.layer .addSublayer(scaleLayer)
        
        
        
        let animations = CABasicAnimation.init(keyPath: "transform.scale")
        animations.toValue = 2.0
        animations.fromValue = 1.0
        animations.duration = 1
        animations.repeatCount = 10000;
        animations.autoreverses = true
        animations.isRemovedOnCompletion = false
        animations.fillMode = kCAFillModeForwards
        scaleLayer.add(animations, forKey: "scaleAnimation")
        
        
    }
}
