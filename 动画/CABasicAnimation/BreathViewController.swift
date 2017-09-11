//
//  BreathViewController.swift
//  动画
//
//  Created by ya Liu on 2017/8/31.
//  Copyright © 2017年 wasterd. All rights reserved.
//
/****************
 opacity
 改变透明度的动画
 *************/
import UIKit
import QuartzCore
class BreathViewController: UIViewController {

    
    var targetView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.view.backgroundColor = UIColor.white
            targetView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
            targetView.backgroundColor = UIColor.blue
            self.view.addSubview(targetView)
        //呼吸动画
        let animation = CABasicAnimation(keyPath: "opacity")
        animation.fromValue = NSNumber(value: 1.0)
        animation.toValue = NSNumber(value: 0)
        animation.autoreverses = true // 回退动画，动画可逆，可循环
        animation.duration = 1.0
        animation.repeatCount = 10000000
        animation.isRemovedOnCompletion = false
        animation.fillMode = kCAFillModeForwards//fillMode配合使用，保持动画完成时的效果
        self.targetView.layer.add(animation, forKey: "aAlpha")
    }
}
