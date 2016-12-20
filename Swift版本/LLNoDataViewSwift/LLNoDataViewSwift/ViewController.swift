//
//  ViewController.swift
//  LLNoDataViewSwift
//
//  Created by LvJianfeng on 2016/12/20.
//  Copyright © 2016年 LvJianfeng. All rights reserved.
//
//  https://github.com/LvJianfeng/LLNoDataView

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 使用更简单了
        
        // Demo 1
        let demo1 = LLNoDataView.ll_NoData(frame: self.view.bounds)
        
        // Demo 2
        let demo2 = LLNoDataView.ll_NoInternet(frame: self.view.bounds)
        
        // Demo 3
        let demo3 = LLNoDataView.ll_NoInternet(frame: self.view.bounds, reloadHandler: {
            print("刷新")
        })
        self.view.addSubview(demo3)
        
        // Demo 4
//        let demo4 = LLNoDataView.ll_NoInternet(frame: CGRect.init(x: 0, y: 0, width: 375, height: 320), backgroundColor: UIColor.groupTableViewBackground, reloadHandler: {
//        
//        })
//        self?.tableView.tableFooterView = LLNoDataView.ll_NoData(frame: CGRect.init(x: 0, y: 0, w: s_SCREEN_WIDTH, h: s_SCREEN_HEIGHT-64-45))
        
//        let demo5 = LLNoDataView.ll_NoInternet(frame: CGRect.init(x: 0, y: 0, width: 375, height: 320), backgroundColor: UIColor.groupTableViewBackground, reloadHandler: {
//
//        })
//        self?.tableView.tableHeaderView = LLNoDataView.ll_NoData(frame: CGRect.init(x: 0, y: 0, w: s_SCREEN_WIDTH, h: s_SCREEN_HEIGHT-64-45))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

