//
//  ViewController.swift
//  003
//
//  Created by YYY on 2017/9/19.
//  Copyright © 2017年 成品家（北京）网路科技有限公司. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "http://www.baidu.com")
        //使用session加载网络数据
        URLSession.shared.dataTask(with: url!) { (data, _, error) in
            //将data转换为String
            guard let data = data else
            {
                let error = error?.localizedDescription ?? ""
                print("网络加载失败 \(error)")
                return
            }
            let html = String(data: data, encoding: .utf8) ?? ""
            print(html)
        }.resume()
    }
}

