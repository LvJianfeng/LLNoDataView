//
//  LLNoDataView.swift
//  LLNoDataViewSwift
//
//  Created by LvJianfeng on 2016/12/20.
//  Copyright © 2016年 LvJianfeng. All rights reserved.
//
//  https://github.com/LvJianfeng/LLNoDataView

import UIKit

typealias LLReloadAction = () -> Void

class LLNoDataView: UIView {
    // 状态图
    @IBOutlet weak var ll_statusImageView: UIImageView!
    // 状态文本
    @IBOutlet weak var ll_statusContentLabel: UILabel!
    // 用于修改reload button的样式等
    @IBOutlet weak var ll_reloadButton: UIButton!
    // 用于设置图片y方向的位置
    @IBOutlet weak var ll_constant_Y: NSLayoutConstraint!
    // LLReloadAction
    var reloadAction: LLReloadAction?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.ll_reloadButton.layer.borderWidth = 1.0 / UIScreen.main.scale
        self.ll_reloadButton.layer.borderColor = UIColor.init(red: 153.0/255.0, green: 153.0/255.0, blue: 153.0/255.0, alpha: 1.0).cgColor
    }
    
    // 初始化 空数据
    class func ll_NoData(frame: CGRect, backgroundColor: UIColor? = UIColor.white, status: String? = "当前没有数据",reloadText: String? = "重新加载", showReload: Bool = false, reloadHandler: LLReloadAction? = nil) -> LLNoDataView {
        let ll_nodataView: LLNoDataView = Bundle.main.loadNibNamed("LLNoDataView", owner: nil, options: nil)?.first as! LLNoDataView
        ll_nodataView.frame = frame
        ll_nodataView.backgroundColor = backgroundColor
        ll_nodataView.ll_statusImageView.image = UIImage(named: "no_data_")
        ll_nodataView.ll_statusContentLabel.text = status
        ll_nodataView.ll_reloadButton.isHidden = showReload
        ll_nodataView.ll_reloadButton.setTitle("  \(reloadText!)  ", for: .normal)
        ll_nodataView.ll_reloadButton.layer.cornerRadius = ll_nodataView.ll_reloadButton.frame.size.height * 0.5
        if let reload = reloadHandler {
            ll_nodataView.reloadAction = reload
        }
        return ll_nodataView
    }
    
    // 初始化 无网络
    class func ll_NoInternet(frame: CGRect, backgroundColor: UIColor? = UIColor.white, status: String? = "网络连接异常", reloadText: String? = "重新加载", showReload: Bool = false, reloadHandler: LLReloadAction? = nil) -> LLNoDataView {
        let ll_nodataView: LLNoDataView = Bundle.main.loadNibNamed("LLNoDataView", owner: nil, options: nil)?.first as! LLNoDataView
        ll_nodataView.frame = frame
        ll_nodataView.backgroundColor = backgroundColor
        ll_nodataView.ll_statusImageView.image = UIImage(named: "network_xinhao_")
        ll_nodataView.ll_statusContentLabel.text = status
        ll_nodataView.ll_reloadButton.isHidden = showReload
        ll_nodataView.ll_reloadButton.setTitle("  \(reloadText!)  ", for: .normal)
        ll_nodataView.ll_reloadButton.layer.cornerRadius = ll_nodataView.ll_reloadButton.frame.size.height * 0.5
        if let reload = reloadHandler {
            ll_nodataView.reloadAction = reload
        }
        return ll_nodataView
    }
    
    // 初始化
    class func initNoDataView(frame: CGRect, backgroundColor: UIColor? = UIColor.white, icon: UIImage!, status: String?, reloadText: String? = "重新加载", showReload: Bool = false, reloadHandler: LLReloadAction? = nil) -> LLNoDataView {
        let ll_nodataView: LLNoDataView = Bundle.main.loadNibNamed("LLNoDataView", owner: nil, options: nil)?.first as! LLNoDataView
        ll_nodataView.frame = frame
        ll_nodataView.backgroundColor = backgroundColor
        ll_nodataView.ll_statusImageView.image = icon
        ll_nodataView.ll_statusContentLabel.text = status
        ll_nodataView.ll_reloadButton.isHidden = showReload
        ll_nodataView.ll_reloadButton.setTitle("  \(reloadText!)  ", for: .normal)
        ll_nodataView.ll_reloadButton.layer.cornerRadius = ll_nodataView.ll_reloadButton.frame.size.height * 0.5
        if let reload = reloadHandler {
            ll_nodataView.reloadAction = reload
        }
        return ll_nodataView
    }
    
    /// 重新刷新
    ///
    /// - Parameter sender: button
    @IBAction func reloadAction(_ sender: Any) {
        if let reload = reloadAction {
            reload()
        }
    }
}
