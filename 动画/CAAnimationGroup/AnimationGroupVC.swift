//
//  AnimationGroupVC.swift
//  动画
//
//  Created by ya Liu on 2017/9/1.
//  Copyright © 2017年 wasterd. All rights reserved.
//

import UIKit

class AnimationGroupVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white;
        let testLayer = CALayer()
        testLayer.backgroundColor = UIColor.blue.cgColor
        testLayer.frame = CGRect(x: 20, y: 100, width: 50, height: 50)
        testLayer.cornerRadius = 25
        self.view.layer.addSublayer(testLayer)
        
        
        let animationGroup = CAAnimationGroup()
        //移动动画
        let animations = CABasicAnimation(keyPath:"position")
        animations.fromValue = CGPoint(x: 100, y: 100)
        animations.byValue = CGPoint(x: 300, y: 300)
        animations.toValue = CGPoint(x: 100 , y: 40)
        
        //颜色动画
        let backAnimation = CABasicAnimation(keyPath:"backgroundColor")
        backAnimation.fromValue = UIColor.red.cgColor
        backAnimation.toValue =  UIColor.blue.cgColor

        
        //大小缩放transition.scale
        let trancescaleAnimation = CABasicAnimation(keyPath: "transform.scale")
        trancescaleAnimation.fromValue = 1.0
        trancescaleAnimation.toValue = 2.5

        
        //边框缩放 borderWidth
        let widthboardAnimation = CABasicAnimation.init(keyPath:"borderWidth")
        widthboardAnimation.fromValue = 1
        widthboardAnimation.toValue = 10
        
        
        
        animationGroup.animations = [animations,backAnimation,trancescaleAnimation,widthboardAnimation]
        animationGroup.autoreverses = true
        animationGroup.repeatCount = MAXFLOAT
        animationGroup.duration = 2
        
        testLayer.add(animationGroup, forKey: nil)
        
    }


}
