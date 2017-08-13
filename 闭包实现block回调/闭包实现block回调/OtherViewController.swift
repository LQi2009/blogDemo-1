//
//  OtherViewController.swift
//  闭包实现block回调
//
//  Created by Artron_LQQ on 2017/8/13.
//  Copyright © 2017年 Artup. All rights reserved.
//

import UIKit

// 1.定义一个闭包类型
//格式: typealias 闭包名称 = (参数名称: 参数类型) -> 返回值类型
typealias swiftBlock = (_ str: String) -> Void

class OtherViewController: UIViewController {

    //2. 声明一个变量
    var callBack: swiftBlock?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        button.setTitle("按钮", for: UIControlState())
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        self.view.addSubview(button)
    }

    func buttonClick() {
        
        //4. 调用闭包,设置你想传递的参数,调用前先判定一下,是否已实现
        if callBack != nil {
            
            callBack!("这里的闭包传递了一个字符串")
        }
    }
    
    //3. 定义一个方法,方法的参数为和swiftBlock类型一致的闭包,并赋值给callBack
    func callBackBlock(_ block: @escaping swiftBlock) {
        
        callBack = block
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
