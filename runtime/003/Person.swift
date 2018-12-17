//
//  Person.swift
//  003
//
//  Created by YYY on 2017/9/20.
//  Copyright © 2017年 成品家（北京）网路科技有限公司. All rights reserved.
//

import UIKit

class Person: NSObject {


    /*
     在程序中，使用运行时函数，动态获取类的属性列表、方法列表、协议列表、Ivar列表。OC的东西在运行时面前，一切都是裸露的。
     获取类的属性列表，可以通过KVC动态设置值。
     获取类的方法列表，可以通过sendMessage动态发送消息。
     获取Ivar列表，是所有第三方框架字典转模型的基础。
     
     基本数据类型，如果定义成可选的，使用运行时获取不到，使用KVC就会崩溃。
     private修改属性，使用运行时获取不到，使用KVC就会崩溃。
     */
    var name: String?
    var age: Int = 0
    var title: String?
    
    //运行时获取类的属性列表
    class func propertyList() -> [String]
    {
        var count: UInt32 = 0
        
        let list = class_copyPropertyList(self, &count)
        print("属性的数量：\(count)")
        var array = [String]()
        
        for i in 0..<Int(count)
        {
            //根据下标获取属性
            guard let pty = list?[i],
                //获取属性的名称,C语言字符串
                let cname = property_getName(pty),
                //将属性名称，转换为String
                let name = String(utf8String: cname) else
            {
                continue
            }
            print(name)
            array.append(name)
        }
        //释放C语言对象
        free(list)
        
        return array
    }

    
    
    
}
