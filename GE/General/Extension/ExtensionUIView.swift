//
//  ExtensionUIView.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/23.
//  Copyright © 2017年 Rabbit. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
//MARK:坐标(x,y)值
    func zzX()->CGFloat{
        return self.frame.origin.x
    }
    func zzY()->CGFloat{
        return self.frame.origin.y
    }
    
//MARK:x(最小值,中间值,最大值)
    func zzMinX()->CGFloat{
        return self.frame.minX
    }
    func zzMidX()->CGFloat{
        return self.frame.midX
    }
    func zzMaxX()->CGFloat{
        return self.frame.maxX
    }
//MARK:y(最小值,中间值,最大值)
    func zzMinY()->CGFloat{
        return self.frame.minY
    }
    func zzMidY()->CGFloat{
        return self.frame.midY
    }
    func zzMaxY()->CGFloat{
        return self.frame.maxY
    }


    
    
    
}






















