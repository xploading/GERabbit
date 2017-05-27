//
//  GERequest.swift
//  BigRabbit
//
//  Created by QTJT on 2017/5/23.
//  Copyright © 2017年 Rabbit. All rights reserved.
//

import UIKit
import AFNetworking

class GERequest: NSObject {
    
/** AFNetworking管理类*/
    private static let manager = AFHTTPSessionManager(baseURL: URL(string: BaseURL))

    static func share()->AFHTTPSessionManager{
        let set = Set<String>(arrayLiteral: "text/html","text/plain","text/json","application/json", "text/javascript")
        manager.responseSerializer.acceptableContentTypes = set
        return manager
    }
    
/** POST请求*/
    static func POST(urlString:String,paraments:Any?,successBack:@escaping (_ json:Any)->Void,failBack:@escaping (_ error:Any)->Void)
    {
        self.share().post(urlString, parameters: paraments, progress: nil, success: { (task, json) in
            successBack(json as Any)
        }) { (task, error) in
            print("异常的请求接口:\t",manager.baseURL as Any,urlString)
            print("异常的请求参数:\t",paraments as Any)
            print("异常原因:\t",error)
            failBack(error)
        }
    }
    
/** GET请求*/
    static func GET(urlString:String,paraments:Any?,successBack:@escaping (_ json:Any)->Void,failBack:@escaping (_ error:Any)->Void)
    {
        self.share().get(urlString, parameters: paraments, progress: nil, success: { (task, json) in
            successBack(json as Any)
        }) { (task, error) in
            print("异常的请求接口:\t",manager.baseURL as Any,urlString)
            print("异常的请求参数:\t",paraments as Any)
            print("异常原因:\t",error)
            failBack(error)
        }
    }
    
    
    

}
