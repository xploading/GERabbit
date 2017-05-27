//
//  GEBox.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/23.
//  Copyright © 2017年 Rabbit. All rights reserved.
//

import UIKit
/**单例用户储存盒子*/
final class GEBox: NSObject {
    //储存用户信息
    var infos : GEUserModel?
    
    
    private static let box = GEBox()
    static func single()->GEBox{
        return box
    }
    private override init() {
    }
}
