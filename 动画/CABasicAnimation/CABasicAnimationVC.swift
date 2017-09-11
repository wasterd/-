//
//  CABasicAnimationVC.swift
//  动画
//
//  Created by ya Liu on 2017/8/31.
//  Copyright © 2017年 wasterd. All rights reserved.
//

/**********************************

 基本动画：key值：
 
    transform.scale   比例缩放动画
	transform.scale.x   在x轴上缩放宽度
	transform.scale.y   在y轴上缩放高度
	transform.rotation.z  平面的旋转
	opacity     透明度
	margin
	zPosition
	backgroundColor   背景色
	cornerRadius   圆角
	borderWidth    边框宽度
	bounds    改变视图的大小动画
	contents
	contentsRect
	frame
	hidden  //隐藏
	mask
	masksToBounds
	position     移动
	shadowColor
	shadowOffset
	shadowOpacity
	shadowRadius
 
 
 属性	                      解读
 Autoreverses	            设定这个属性为 YES 时,在它到达目的地之后,动画的返回到开始的值,代替了直接跳转到开始的值，过渡平滑
 Duration	                设定开始值到结束值花费的时间。期间会被速度的属性所影响
 RemovedOnCompletion	    这个属性默认为 YES,在指定的时间段完成后,动画就自动的从层上移除了。
 FillMode	                这个属性一般和 RemovedOnCompletion 配合使用，保持动画状态。其中kCAFillModeForwards 当动画结束后,layer会一直保持着动画最后的状态.此时将RemovedOnCompletion设为NO
 Speed	                    默认的值为 1.0.如果你改变这个值为 2.0,动画会用 2 倍的速度播放。这样的影响就是使持续时间减半。如果你指定的持续时间为 6 秒,速度为 2.0,动画就会播放 3 秒钟即一半的持续时间。
 RepeatCount             	默认的是 0,动画只会播放一次。如果指定一个无限大的重复次数,使用 MAXFLOAT 。这个不应该和 repeatDration 属性一块使用
 RepeatDuration	            这个属性指定了动画应该被重复多久。动画会一直重复,直到设定的时间用完。同上它不应该和 repeatCount 一起使用
 FromValue	                设置动画的初始值
 ToValue	                设置动画的到达值
 TimingFunction	            控制动画运行的节奏. 
                            kCAMediaTimingFunctionLinear（线性）：匀速，给你一个相对静态的感觉 
                            kCAMediaTimingFunctionEaseIn（渐进）：动画缓慢进入，然后加速离开 
                            kCAMediaTimingFunctionEaseOut（渐出）：动画全速进入，然后减速的到达
                            kCAMediaTimingFunctionEaseInEaseOut（渐进渐出）：动画缓慢的进入，中间加速，然后减速的到达目的地。这个是默认的动画行为。
 BeginTime	                可以用来设置动画延迟执行时间，若想延迟1s，就设置为CACurrentMediaTime()+1，CACurrentMediaTime()为图层的当前时间
 
 ****************************/



import UIKit

class CABasicAnimationVC: UIViewController {
    let dataArray = ["改变透明度（opacity）","比例缩放（ transform.scale)"," 在x轴上缩放动画(transform.scale.x)","在y轴上缩放动画(transform.scale.y)","垂直方向上旋转（transform.rotation.x","水平方向上旋转（transform.rotation.y)"," 平面方向上旋转（transform.rotation.z","bounds","位置移动(Position)","背景色（Background)","圆角（cornerRadius)","边框宽度（borderWidth)","hidden（隐藏)"]
    var tableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
      self.setUpTableView()
    }
    func setUpTableView() {
        self.tableView = UITableView.init(frame: self.view.bounds, style: .plain)
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        self.view.addSubview(self.tableView)
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellls")
        self.tableView.tableFooterView = UIView()
    }
}

extension CABasicAnimationVC : UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellls")
        cell?.textLabel?.text = self.dataArray[indexPath.row]
        return cell!
    }

}

extension  CABasicAnimationVC : UITableViewDelegate
{

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let vc = BreathViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }else if indexPath.row == 1 {
            let TranVC = TransformScaleViewController()
            self.navigationController?.pushViewController(TranVC, animated: true)
        }else  if indexPath.row == 2 {
            let scaleX = TransformScaleXViewController()
            self.navigationController?.pushViewController(scaleX, animated: true)
        }else if indexPath.row == 3 {
            let scaley = TransformScaleYViewController()
            self.navigationController?.pushViewController(scaley, animated: true)
        }else if indexPath.row == 4 {
            let rotationx = TransformRotationXVC()
            self.navigationController?.pushViewController(rotationx, animated: true)
        }else if indexPath.row == 5 {
            let rotationy = TransformRotationYVC()
            self.navigationController?.pushViewController(rotationy, animated: true)
        }else if indexPath.row == 6 {
            let rotationz = TransformRotationZVC()
            self.navigationController?.pushViewController(rotationz, animated: true)
        }else if indexPath.row == 7 {
            let boundsvc = BoundsViewController()
            self.navigationController?.pushViewController(boundsvc, animated: true)
        }else if indexPath.row == 8 {
            let boundsvc = PositionViewController()
            self.navigationController?.pushViewController(boundsvc, animated: true)
        }else if indexPath.row == 9 {
            let boundsvc = BackgroundViewController()
            self.navigationController?.pushViewController(boundsvc, animated: true)
        }else if indexPath.row == 10 {
            let boundsvc = CornerRadiusV()
            self.navigationController?.pushViewController(boundsvc, animated: true)
        }else if indexPath.row == 11 {
            let boundsvc = BorderWidthVC()
            self.navigationController?.pushViewController(boundsvc, animated: true)
        }else if indexPath.row == 12 {
            let boundsvc = HiddenViewController()
            self.navigationController?.pushViewController(boundsvc, animated: true)
        }
        
    }
}
