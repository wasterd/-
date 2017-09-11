//
//  TransformScaleXViewController.swift
//  动画
//
//  Created by ya Liu on 2017/8/31.
//  Copyright © 2017年 wasterd. All rights reserved.
//

/******************
 transform.scale.x
  在x轴 上缩放动画
 ************/


import UIKit

class TransformScaleXViewController: UIViewController {

    override func viewDidLoad() {
        self.view.backgroundColor =  UIColor.white
        super.viewDidLoad()
        let scaleX = CALayer()
        scaleX . backgroundColor = UIColor.orange.cgColor
        scaleX.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        self.view.layer.addSublayer(scaleX)
        
        
        let animation = CABasicAnimation.init(keyPath:"transform.scale.x")
        animation.toValue = 2.0
        animation.fromValue = 1.0
        animation.duration = 1.0
        animation.autoreverses = true
        animation.fillMode = kCAFillModeForwards
        animation.isRemovedOnCompletion = true
        animation.repeatCount = 10000
        scaleX.add(animation, forKey: "animateTransform")
    
    }


}
