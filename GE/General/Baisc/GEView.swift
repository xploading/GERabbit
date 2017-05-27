//
//  GEView.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/23.
//  Copyright © 2017年 Rabbit. All rights reserved.
//

import UIKit

class GEView: UIView , GEViewProtocol {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.zzSetupSubViews()
        self.zzBindingViewModel()
    }
    
    
    func zzSetupSubViews(){
      
    }
    
    func zzBindingViewModel(){
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
