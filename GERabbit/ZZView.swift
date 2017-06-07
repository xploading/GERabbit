//
//  ZZView.swift
//  GERabbit
//
//  Created by QTJT on 2017/6/6.
//  Copyright © 2017年 Rabbit. All rights reserved.
//

import UIKit

class ZZView: GEView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func zzBindingViewModel() {
        self.viewModel = GEViewModel()
        
    }
}
