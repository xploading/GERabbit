//
//  ViewController1.swift
//  GERabbit
//
//  Created by QTJT on 2017/5/27.
//  Copyright © 2017年 Rabbit. All rights reserved.
//

import UIKit

class ViewController1: GEViewController {
    var viewModel : GEViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func zzAddSubViews() {
        self.view.addSubview(XPView())
    }

    override func zzLayoutNavigation() {
        
    }

    
}
