//
//  CATransitionVC.swift
//  动画
//
//  Created by ya Liu on 2017/8/31.
//  Copyright © 2017年 wasterd. All rights reserved.
//

import UIKit

class CATransitionVC: UIViewController {

    var tableView = UITableView()
    let titles = ["图片浏览","图标3D翻转","视图间转场动画"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
    }
    func setUpTableView()  {
        self.tableView = UITableView.init(frame: self.view.bounds, style: .plain)
        self.tableView.dataSource = self;
        self.tableView.delegate = self
        self.tableView.tableFooterView = UIView()
        self.view.addSubview(self.tableView)
        self.tableView .register(UITableViewCell.self, forCellReuseIdentifier: "cellc")
    }
    
    
}

extension CATransitionVC : UITableViewDelegate
{

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 {
            let vc = PictureBrowsingVC()
            self.navigationController?.pushViewController(vc, animated: true)
        }else if indexPath.row == 1{
            let vc = Picture3DViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }else if indexPath.row == 2{
            let vc = TwoViewViewController()
            vc.title = self.titles[indexPath.row];
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

extension CATransitionVC: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.titles.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellc")
        cell?.textLabel?.text = self.titles[indexPath.row]
        return cell!
    }


}
