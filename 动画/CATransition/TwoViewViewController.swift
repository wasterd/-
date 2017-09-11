//
//  TwoViewViewController.swift
//  动画
//
//  Created by ya Liu on 2017/8/31.
//  Copyright © 2017年 wasterd. All rights reserved.
//


/*************************************
 typedef NS_OPTIONS(NSUInteger, UIViewAnimationOptions) {
    UIViewAnimationOptionLayoutSubviews    类似子视图直接添加在父视图上
    UIViewAnimationOptionAllowUserInteraction      = 1 <<  1, // turn on user interaction while animating
    UIViewAnimationOptionBeginFromCurrentState     = 1 <<  2, // start all views from current value, not initial value
    UIViewAnimationOptionRepeat                    = 1 <<  3, // repeat animation indefinitely
    UIViewAnimationOptionAutoreverse               = 1 <<  4, // if repeat, run animation back and forth
    UIViewAnimationOptionOverrideInheritedDuration = 1 <<  5, // ignore nested duration
    UIViewAnimationOptionOverrideInheritedCurve    = 1 <<  6, // ignore nested curve
    UIViewAnimationOptionAllowAnimatedContent      = 1 <<  7, // animate contents (applies to transitions only)
    UIViewAnimationOptionShowHideTransitionViews   = 1 <<  8, // flip to/from hidden state instead of adding/removing
    UIViewAnimationOptionOverrideInheritedOptions  = 1 <<  9, // do not inherit any options or animation type
 
    UIViewAnimationOptionCurveEaseInOut            = 0 << 16, // default
    UIViewAnimationOptionCurveEaseIn         快速进入      = 1 << 16,
    UIViewAnimationOptionCurveEaseOut              = 2 << 16,
    UIViewAnimationOptionCurveLinear               = 3 << 16,
 
    UIViewAnimationOptionTransitionNone            = 0 << 20, // default
    UIViewAnimationOptionTransitionFlipFromLeft    = 1 << 20,
    UIViewAnimationOptionTransitionFlipFromRight   = 2 << 20,
    UIViewAnimationOptionTransitionCurlUp     右下角往上翻页     = 3 << 20,
    UIViewAnimationOptionTransitionCurlDown   从左上角下放页        = 4 << 20,
    UIViewAnimationOptionTransitionCrossDissolve 渐变交换  = 5 << 20,
    UIViewAnimationOptionTransitionFlipFromTop  从上往下翻转（垂直方向）   = 6 << 20,
    UIViewAnimationOptionTransitionFlipFromBottom  = 7 << 20,从下往上翻转（垂直方向）
 
    UIViewAnimationOptionPreferredFramesPerSecondDefault     = 0 << 24,
    UIViewAnimationOptionPreferredFramesPerSecond60          = 3 << 24,
    UIViewAnimationOptionPreferredFramesPerSecond30          = 7 << 24,
 
 } NS_ENUM_AVAILABLE_IOS(4_0);

 ******************************************/
import UIKit

class TwoViewViewController: UIViewController {

    var view1 = UIView()
    var view2 = UIView()
    var scrollView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scrollView = UIScrollView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height))
        
        scrollView.contentSize = CGSize.init(width: self.view.bounds.size.width, height: self.view2.bounds.size.height)
        
        self.view.addSubview(scrollView)

        let view1 = UIView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height))
        scrollView.addSubview(view1)
        view1.backgroundColor = UIColor.red
        self.view1 = view1
        
        let view2 = UIView.init(frame: view1.frame)
        view2.backgroundColor = UIColor.blue
        self.view2 = view2
        scrollView.addSubview(view2)
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(tapClick(_:)))
       scrollView.addGestureRecognizer(tap)
        
    }
    var i = 0
    
    func tapClick(_ tap: UITapGestureRecognizer) {
        if i % 2 != 0 {
            UIView.transition(from: self.view1, to: self.view2, duration: 3, options: .allowUserInteraction, completion: nil)//在参数options中 使用UIViewAnimationOptions枚举中的元素进行试验
        }else{
            UIView.transition(from: self.view2, to: self.view1, duration: 3, options: .showHideTransitionViews, completion: nil)
        }
         i += 1
    }
    

    

}
