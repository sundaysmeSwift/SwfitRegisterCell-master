//
//  ViewController.swift
//  SwfitRegisterCell
//
//  Created by cb_2018 on 2019/4/17.
//  Copyright © 2019 cfwf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    lazy var tableView : UITableView = {
        let tableView = UITableView.init(frame: self.view.bounds, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.white
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        // 注册头尾视图
        tableView.ym_registerHeaderFooter(headerFooter: HomeVipHeaderView.self)
        tableView.ym_registerHeaderFooter(headerFooter: HomeVipFooterView.self)
        // 注册分区cell
        tableView.ym_registerCell(cell: HomeVIPCellID.self)
        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell.init()
    }
    
    
}

