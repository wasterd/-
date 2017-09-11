//
//  PictureBrowsingVC.swift
//  动画
//
//  Created by ya Liu on 2017/8/31.
//  Copyright © 2017年 wasterd. All rights reserved.
//

import UIKit

class PictureBrowsingVC: UIViewController {

    
    
    var imageV = UIImageView()
    var index = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.imageV = UIImageView.init(frame: CGRect.init(x: 50, y: 100, width: 275, height: 440));
        self.imageV.backgroundColor = UIColor.red
        self.view.addSubview(imageV)
        self.imageV.image = UIImage.init(named: "welcome0")
        index = 1
    
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        //实现图片浏览
        /*转场代码*/
        
        
        let imageName = "welcome\(index)"
        self.imageV.image  = UIImage.init(named: imageName)
        index += 1
        if index == 4 {
            index = 1
        }
        
        
        /*转场动画代码*/
        let animation = CATransition()
        //设置转场的类型
        animation.type = "pageCurl"
        //设置动画的方向
        animation.subtype = kCATransitionFromLeft
        //动画执行时间
         animation.duration = 1
        self.imageV.layer.add(animation, forKey: nil)
        
    }
}
