

//
//  Teacher.swift
//  003
//
//  Created by YYY on 2017/9/20.
//  Copyright © 2017年 成品家（北京）网路科技有限公司. All rights reserved.
//

import UIKit

class Teacher: NSObject {
    
    var name: String?
    var age: Int = 0
    
    /*
     遍历构造函数允许返回nil
     正常的构造函数一定会创建对象
     遍历构造函数：判断给定的参数是否符合条件，如果不符合条件，直接返回nil，不会创建对象，减少内存开销。
     只有遍历构造函数中，使用self.init()实例化当前对象。
     没有convenience关键字的构造函数是负责创建对象的，反之用来检查条件的，本身不负责对象的创建。
     如果在遍历构造函数设置当前对象属性，一定在self.init()之后。
     */
    //
    convenience init?(name: String, age: Int)
    {
        if age > 200
        {
            return nil
        }
        //实例化当前对象
        self.init()
        
        self.name = name
    }
    
    

}
