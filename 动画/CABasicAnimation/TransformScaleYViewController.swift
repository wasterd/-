//
//  TransformScaleYViewController.swift
//  动画
//
//  Created by ya Liu on 2017/8/31.
//  Copyright © 2017年 wasterd. All rights reserved.
//


/******************
 transform.scale.y
 在y轴 上缩放动画
 ************/


import UIKit

class TransformScaleYViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let scaleY = CALayer()
        scaleY.backgroundColor = UIColor.black.cgColor
        scaleY.frame = CGRect.init(x: 100, y: 200, width: 50, height: 50)
        self.view.layer.addSublayer(scaleY)

        
        let animation = CABasicAnimation.init(keyPath: "transform.scale.y")
        animation.toValue = 2.0
        animation.fromValue = 1.0

        animation.duration = 1
        animation.repeatCount = 1000

        animation.autoreverses = true
        animation.isRemovedOnCompletion = true
        animation.fillMode = kCAFillModeForwards
        
        scaleY.add(animation, forKey: "transform.scale.y")
        

    }
    
    
}
