//
//  HiddenViewController.swift
//  动画
//
//  Created by ya Liu on 2017/8/31.
//  Copyright © 2017年 wasterd. All rights reserved.
//

import UIKit

class HiddenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let cornerRadiusLayer = CALayer()
        cornerRadiusLayer.backgroundColor = UIColor.red.cgColor
        cornerRadiusLayer.frame = CGRect(x: 100, y: 200, width: 100, height: 100)
        self.view.layer.addSublayer(cornerRadiusLayer)
        
        
        //改变边框的动画
        let animations = CABasicAnimation(keyPath:"hidden")
        animations.fromValue = 0 //初始化值
        animations.toValue =  1 //到达时的值
        
        animations.autoreverses = true
        animations.repeatCount = MAXFLOAT
        animations.duration = 1
        cornerRadiusLayer.add(animations, forKey:"hidden")
    }
}
    
    

