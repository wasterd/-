//
//  AnimationListTableVC.swift
//  动画
//
//  Created by ya Liu on 2017/8/31.
//  Copyright © 2017年 wasterd. All rights reserved.
//

import UIKit

class AnimationListTableVC: UIViewController {
    var dataArray = ["CABasicAnimation(基础动画)","CAKeyframeAnimation（关键帧动画）","CATransition(转场动画)","CAAnimationGroup(组动画)"];
    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpTableView()
    }
    
    func setUpTableView() {
        self.tableView = UITableView.init(frame: self.view.bounds, style: .plain)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.view .addSubview(self.tableView)
        self.tableView .register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        self.tableView.tableFooterView = UIView.init()
    }
}

// MARK: - Table view Delegate
extension AnimationListTableVC : UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {//基本动画
            let vc = CABasicAnimationVC()
            self.navigationController?.pushViewController(vc, animated: true)
        }else if indexPath.row == 1{//关键帧
            let vc = CAKeyframeAnimationVC()
            self.navigationController?.pushViewController(vc, animated: true)
        }else if indexPath.row == 2 { //转场动画
            let vc = CATransitionVC()
            self.navigationController?.pushViewController(vc, animated: true)
        }else if indexPath.row == 3 { //转场动画
            let vc = AnimationGroupVC()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

// MARK: - Table view data source

extension AnimationListTableVC: UITableViewDataSource
{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count;
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId")
        
        cell?.textLabel?.text = self.dataArray[indexPath.row]
        return cell!
    }
    



}

