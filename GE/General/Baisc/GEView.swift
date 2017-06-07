//
//  GEView.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/23.
//  Copyright © 2017年 Rabbit. All rights reserved.
//

import UIKit

class GEView: UIView , GEViewProtocol {
    var viewModel:GEViewModel?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    func initWith(VM: GEViewModel) -> GEView {
        let view = self
        view.viewModel = VM
        view.zzBindingViewModel()
        view.zzSetupSubViews()
        return view
    }
    
    
    func zzSetupSubViews(){
      
    }
    
    func zzBindingViewModel(){

    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
