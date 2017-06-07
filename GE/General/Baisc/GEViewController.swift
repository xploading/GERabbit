//
//  GEViewController.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/23.
//  Copyright © 2017年 Rabbit. All rights reserved.
//

import UIKit

class GEViewController: UIViewController ,GEViewControllerProtocol{
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
//MARK: GE..🗣-----初始化创建VC-----!
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
 
        weak var weakSelf = self
        self.reactive.signal(for: #selector(viewDidLoad)).observeValues { (a) in
            print(a)
            weakSelf?.zzAddSubViews()
            weakSelf?.zzBindingViewModel()
        }

        self.reactive.signal(for: #selector(viewWillAppear)).observeValues { (a) in
            weakSelf?.zzLayoutNavigation()
            weakSelf?.zzGetNewData()
        }

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

//MARK: GE..🗣-----GEViewControllerProtocol协议方法-----!
    func initWith(_ viewModel: GEViewModel){}
    //设置导航
    func zzLayoutNavigation() {print("设置navigation内容:\tzzLayoutNavigation")}
    //绑定viewModel
    func zzBindingViewModel() {print("绑定ViewModel:\tzzBindingViewModel")}
    //获取数据
    func zzGetNewData() {print("页面加载数据:\tzzGetNewData")}
    //添加子视图
    func zzAddSubViews() {print("添加子视图:\tzzAddSubViews")}
    //收起键盘
    func zzRecoverKeyboard() {print("收起键盘相关操作:zzRecoverKeyboard")}

}





