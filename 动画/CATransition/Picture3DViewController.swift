//
//  Picture3DViewController.swift
//  动画
//
//  Created by ya Liu on 2017/8/31.
//  Copyright © 2017年 wasterd. All rights reserved.
//

import UIKit

class Picture3DViewController: UIViewController {

        var iconImageView = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        self.iconImageView = UIImageView.init(frame: CGRect.init(x: 100, y: 100, width: 40, height: 40))
        self.iconImageView.image = UIImage.init(named: "facebook");
        self.view.addSubview(self.iconImageView)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        UIView.transition(with: self.iconImageView, duration: 1, options: .transitionFlipFromLeft, animations: {
            self.iconImageView.image = UIImage.init(named: "feedback")
        }) { (true) in

            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(Int64(1 * NSEC_PER_SEC))/Double(NSEC_PER_SEC), execute: { 
                
                UIView.transition(with: self.iconImageView, duration: 1, options: .transitionFlipFromRight, animations: { 
                    self.iconImageView.image = UIImage.init(named: "facebook");
                }, completion: nil)
                
            })
        }
        
    }
    
    
    

}
