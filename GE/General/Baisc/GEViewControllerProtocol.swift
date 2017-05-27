//
//  GEViewControllerProtocol.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/26.
//  Copyright © 2017年 Rabbit. All rights reserved.
//

import Foundation

protocol GEViewControllerProtocol {
    func initWith(_ viewModel:GEViewModel) //初始化绑定
    func zzAddSubViews() //添加子视图
    func zzBindingViewModel() //绑定ViewModel
    func zzLayoutNavigation() //布局导航条
    func zzGetNewData() //获取数据
    func recoverKeyboard() //收起键盘
}

