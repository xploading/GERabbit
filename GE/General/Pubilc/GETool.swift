//
//  GETools.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/23.
//  Copyright © 2017年 Rabbit. All rights reserved.
//

import UIKit

class GETool: NSObject {
//MARK:----------正则表达式判断
    
    /** 验证手机号合法性*/
    static func isMobileNumber(mobile:String)->Bool
    {
        let regex = "^1[3578]\\d{9}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return  predicate.evaluate(with: mobile)
        
    }
    
    /** 验证email合法性*/
    static func isEmailAddress(email:String)->Bool
    {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{1,5}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: email)
    }
    
    /** 验证身份证号合法性*/
    static func isIdentityNumber(number:String)->Bool
    {
        let regex = "^\\d{14}[xX]|\\d{18}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: number)
    }
//MARK:----------用户登录管理
    /**登录状态判断*/
    static func isLogin()->Bool{
        let result = (GEBox.single().infos != nil) ? true : false
        return result
    }
    /**本地保存用户信息*/
    static func zzSaveInfomation(){
        print("储存用户信息")
    }
    static func zzDeleteInfomation(){
        print("删除用户信息")
    }
//MARK:----------动画
    static func Animat(_ type:GEAnimatType, _ block:((CAKeyframeAnimation)->Void)){
        let animation = CAKeyframeAnimation()
        switch type {
        case .scale:
            animation.keyPath = "transform.scale"
//            animation.values = [1.0,1.2,1.4,1.6,1.4,1.2,1.0]
            
            animation.duration = 0.5
        default:
            break
        }
        block(animation)
    }
    static let emitter = CAEmitterLayer(layer: "explosionLayer")
    static func zzEmitter(at:UIView){
        
        
        let emitterCell = CAEmitterCell()
        emitterCell.name = "emitterCell"
        emitterCell.alphaRange = 0.10
        emitterCell.alphaSpeed = -1.0
        emitterCell.lifetime = 0.7
        emitterCell.lifetimeRange = 0.3
        emitterCell.birthRate = 2500
        emitterCell.velocity = 40
        emitterCell.velocityRange = 10
        emitterCell.scale = 0.03
        emitterCell.scaleRange = 0.02
        emitterCell.contents = UIImage(named: "sparkle")?.cgImage
        emitter.name = "explosionLayer"
        emitter.emitterShape = kCAEmitterLayerCircle
        emitter.emitterMode = kCAEmitterLayerOutline
        emitter.emitterSize = CGSize(width: 5, height: 0)
        emitter.emitterCells = [emitterCell]
        
        emitter.renderMode = kCAEmitterLayerOldestFirst
        emitter.masksToBounds = false
        emitter.birthRate = 0
        
        emitter.zPosition = 0
        at.layer.addSublayer(emitter)
        
        
        
        emitter.beginTime = CACurrentMediaTime()
        emitter.position = CGPoint(x: at.frame.width/2, y: at.frame.height/2)
        emitter.birthRate = 1

        
    }
    static func stop(){
        emitter.birthRate = 0

    }

    //MARK:弹框
    ///revoc为nil时不显示取消按钮,handle为nil时,alert只消失不执行任何操作
    func zzShowAlertController(_ content:String,revoc:String?,_ handler:((UIAlertAction)->Void)?){
        let alert = UIAlertController(title: content, message: nil, preferredStyle: .alert)
        let executeAction = UIAlertAction(title: "确定", style: .default, handler: handler)
        if revoc != nil
        {
            let cancelAction = UIAlertAction(title: revoc, style: .cancel, handler: nil)
            alert.addAction(cancelAction)
        }
        alert.addAction(executeAction)
//        self.present(alert, animated: true, completion: nil)
    }

    
}














