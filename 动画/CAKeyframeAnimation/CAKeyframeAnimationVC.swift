//
//  CAKeyframeAnimationVC.swift
//  动画
//
//  Created by ya Liu on 2017/8/31.
//  Copyright © 2017年 wasterd. All rights reserved.
//

import UIKit

class CAKeyframeAnimationVC: UIViewController {

    let titles = ["开始动画","暂停动画"]
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        super.viewDidLoad()
        let  keyframeLayer =   CALayer()
        keyframeLayer.backgroundColor = UIColor.red.cgColor
        keyframeLayer.cornerRadius = 15
        keyframeLayer.frame = CGRect(x: 100, y: 100, width: 30, height: 30)
        self.view.layer.addSublayer(keyframeLayer)
   
    
        let animations = CAKeyframeAnimation(keyPath: "position")
        
        //方式1：array
        let value1 = CGPoint(x: 20, y: 100)
        let value2 = CGPoint(x: 340, y: 100)
        let value3 = CGPoint(x: 340, y: 400)
        let value4 = CGPoint(x: 20, y: 400)
        let value5 = CGPoint(x: 20, y: 100)
        //设定关键帧位置，必须含起始与终止位置
      animations.values = [value1,value2,value3,value4,value5]
 
        /*
        //方式2. path
        let path = CGMutablePath()
        path.move(to: CGPoint(x: 20, y: 100))
        path.addLine(to: CGPoint(x: 340, y: 100))
        path.addLine(to: CGPoint(x: 340, y: 100))
        path.addLine(to: CGPoint(x: 340, y: 400))
        path.addLine(to: CGPoint(x: 20, y: 400))
        path.addLine(to: CGPoint(x: 20, y: 100))
        animations.path = path;
        */
        
        
        //设定每个关键帧的时长，如果没有显式地设置，则默认每个帧的时间=总duration/(values.count - 1)
        animations.keyTimes = [0,0.6,0.7,0.8,1]
        
        //timingFunctions 运动的效果
        /*
         kCAMediaTimingFunctionLinear//线性
         kCAMediaTimingFunctionEaseIn//淡入
         kCAMediaTimingFunctionEaseOut//淡出
         kCAMediaTimingFunctionEaseInEaseOut//淡入淡出
         kCAMediaTimingFunctionDefault//默认
         */
        animations.timingFunctions = [ CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut),CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear),CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut),CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)]
        //calculationMode： 该属性决定了物体在每个子路径下是跳着走还是匀速走，跟timeFunctions属性有点类似
        /*
         const kCAAnimationLinear//线性，默认
         const kCAAnimationDiscrete//离散，无中间过程，但keyTimes设置的时间依旧生效，物体跳跃地出现在各个关键帧上
         const kCAAnimationPaced//平均，keyTimes跟timeFunctions失效
         const kCAAnimationCubic//平均，同上
         const kCAAnimationCubicPaced//平均，同上
         */
        animations.calculationMode = kCAAnimationLinear
        animations.repeatCount = MAXFLOAT
        animations.isRemovedOnCompletion = false
        animations.duration = 4
        keyframeLayer.add(animations, forKey: "po")
        
//        
//        for i in 0..<2 {
//            let button = UIButton(type: .custom)
//            button.frame = CGRect.init(x: 100 +  120 * i, y: Int(self.view.bounds.size.height - 80), width: 100, height: 30)
//            button .setTitle( titles[i], for: .normal)
//            button.backgroundColor = UIColor.cyan
//            button.addTarget(self, action: #selector(pauseAndStart(button:layer:)), for: .touchUpInside)
//            button.tag = 1000 + i;
//            self.view.addSubview(button)
//        }
        
        
    }
//    
//    func pauseAndStart( button: UIButton,layer: CALayer) {
//        
//        if button.tag == 1000 {//开启动画
//            let pausedTime = layer.timeOffset as? CFTimeInterval
//            layer.speed = 1
//            layer.beginTime = 0
//            let timeSincePause = layer.convertTime(CACurrentMediaTime(), from: nil) - pausedTime!
//            layer.beginTime = timeSincePause
//            
//        }else {//暂停动画
//            let pasusedTime = layer.convertTime(CACurrentMediaTime(), from: nil)
//            layer.speed = 1
//            layer.timeOffset = pasusedTime
//        
//        }
//        
//        
//        
//    }
    

}
