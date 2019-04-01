//
//  ViewController.swift
//  translate
//
//  Created by niit97 on 2019/4/1.
//  Copyright © 2019 niit97. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let bt1 = UIButton.init(frame: CGRect.init(x:10,y:20+44,width:
            40,height: 40))
        bt1.setTitleColor(UIColor.blue, for: .normal)
        bt1.setBackgroundImage(UIImage(named: "Image"), for: .normal)
        self.view.addSubview(bt1)
        bt1.addTarget(self, action: #selector(action(bt1:)), for: UIControl.Event.touchUpOutside)
        
        let lb1 = UILabel.init(frame: CGRect.init(x: 60, y: 20+44, width: 100, height: 40))
        lb1.text = "实时翻译"
        lb1.textColor = UIColor.black
        self.view.addSubview(lb1)
        
        
        let lb2 = UILabel.init(frame: CGRect.init(x: 50, y: 20+44+50, width: 100, height: 40))
        lb2.text = "简体中文"
        lb2.textColor = UIColor.black
        self.view.addSubview(lb2)
        
        let lb3 = UILabel.init(frame: CGRect.init(x: 260, y: 20+44+50, width: 100, height: 40))
        lb3.text = "英语"
        lb3.textColor = UIColor.black
        self.view.addSubview(lb3)
        
        let tf1 = UITextField.init(frame: CGRect.init(x: 70, y: 700, width: 200, height: 40))
        tf1.backgroundColor = UIColor.lightGray
        tf1.placeholder = "请输入要翻译的文字"
        self.view.addSubview(tf1)
        
        let bt2 = UIButton.init(frame: CGRect.init(x:280,y:700,width:
            40,height: 40))
        bt2.setTitleColor(UIColor.blue, for: .normal)
        bt2.setTitle("发送", for: UIControl.State.normal)
        self.view.addSubview(bt2)
        
    }
    
    @objc func action(bt1:UIButton){
        print("点击了这个按钮")
    }
}

