//
//  GEViewModel.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/26.
//  Copyright © 2017年 Rabbit. All rights reserved.
//

import UIKit

class GEViewModel: NSObject,GEViewModelProtocol {
    override init() {
        super.init()
        let viewModel = GEViewModel()
        print(self)
    }
    
    func initWith(_ model: Any)->GEViewModel {
        return self
    }
}
