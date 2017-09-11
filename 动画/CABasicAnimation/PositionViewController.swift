//
//  PositionViewController.swift
//  动画
//
//  Created by ya Liu on 2017/8/31.
//  Copyright © 2017年 wasterd. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Position"
  
       
        self.view.backgroundColor = UIColor.white
        let positionLayer = CALayer()
        positionLayer.backgroundColor = UIColor.red.cgColor
        positionLayer.frame = CGRect(x: 0, y: 0, width: 50, height: 50);
        self.view.layer.addSublayer(positionLayer)
    
        //移动动画
        let animations = CABasicAnimation(keyPath:"position")
        animations.fromValue = CGPoint(x: 100, y: 100)
        animations.toValue = CGPoint(x: 100 , y: 300)
        animations.autoreverses = true
        animations.repeatCount = MAXFLOAT
        animations.duration = 2
        positionLayer.add(animations, forKey: "p")
        
        
    
    }

}
