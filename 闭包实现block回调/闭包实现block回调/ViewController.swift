//
//  ViewController.swift
//  闭包实现block回调
//
//  Created by Artron_LQQ on 16/6/28.
//  Copyright © 2016年 Artup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let other = OtherViewController()
        
        self.addChildViewController(other)
        self.view.addSubview(other.view)
        
        // 5. 实现闭包,获取到传递的参数
        other.callBackBlock { (str) in
            
            print(str)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

