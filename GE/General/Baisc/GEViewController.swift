//
//  GEViewController.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/23.
//  Copyright © 2017年 Rabbit. All rights reserved.
//

import UIKit

class GEViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.reactive.trigger(for: #selector(viewDidLoad)).observeValues {
            self.zzAddSubViews()
        }
        self.reactive.trigger(for: #selector(viewWillAppear)).observeValues {
            self.zzLayoutNavigation()
        }
        self.reactive.trigger(for: #selector(initWith)).observeValues {
            self.zzBindingViewModel()
        }
//        self.zzAddSubViews()
//        self.zzBindingViewModel()
//        self.zzGetNewData()
//        self.zzLayoutNavigation()
//        self.recoverKeyboard()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    

}
extension GEViewController:GEViewControllerProtocol{

    internal func initWith(_ viewModel: GEViewModel) {}
    //设置导航
    internal func zzLayoutNavigation() {}
    //绑定viewModel
    internal func zzBindingViewModel() {}
    //获取数据
    internal func zzGetNewData() {}
    //添加子视图
    internal func zzAddSubViews() {}
    //收起键盘
    internal func recoverKeyboard() {}

}





