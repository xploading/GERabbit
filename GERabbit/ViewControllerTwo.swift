//
//  ViewControllerTwo.swift
//  GERabbit
//
//  Created by QTJT on 2017/5/31.
//  Copyright © 2017年 Rabbit. All rights reserved.
//

import UIKit


class ViewControllerTwo: GEViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func zzLayoutNavigation() {
        print("自定制导航条内容")
    }
    

    deinit {
        print("销毁")
    }
}
