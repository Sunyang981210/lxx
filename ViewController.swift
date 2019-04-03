//
//  ViewController.swift
//  navigation
//
//  Created by abc on 2019/4/3.
//  Copyright © 2019 abc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //加载试图后进行任何其他设置
        self.title = "行程助手"
        self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        //设置左上角导航按钮的样式和功能
       self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "行程", style: .plain,target: self,action: #selector(leftPage))
        //设置右上角导航按钮的样式和功能
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "列表", style: .plain,target: self,action: #selector(rightPage))
        
        
        //设置图标
        let iv1 = UIImageView.init(frame: CGRect.init(x:100,y:20+44+100,width:200,height:200))
        let image1 = UIImage(named: "account")
        iv1.image = image1
        self.view.addSubview(iv1)
        
        //设置形成按钮
       
    }
    //按钮的点击事件
    @objc func leftPage() {
        //初始化第二个视图控制器对象
        let viewController1 = ViewController()
        //将第二个视图控制器压入导航视图控制器，实现页面跳转
        self.navigationController?.pushViewController(viewController1,animated: true)
}
    
    @objc func rightPage() {
        //初始化第二个视图控制器对象
        let viewController2 = ViewController()
        //将第二个视图控制器压入导航视图控制器，实现页面跳转
        self.navigationController?.pushViewController(viewController2,animated: true)
    }
    
    
    
    //视图即将可见时执行该方法
    //导航栏的样式设置
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //设置是否透明
        //self.navigationController?.navigationBar.isTranslucent = false
        //设置系统样式
       //self.navigationController?.navigationBar.barStyle = .black
        //设置背景样式
       //self.navigationController?.navigationBar.barTintColor = UIColor.orange
    }
    
    
   //创建一个UIImageView对象

//    UIImageView * imageView = [[UIImageView alloc] initWithFrame(CGRect)]
//    imageView.frame = CGRectMake(CGFloat x, CGFloat y, CGFloat width,CGFloat height)
//    imageView.frame = CGRectMake(0, 0, 320, 460)
//    imageView.center = CGPointMake(CGFloat x, CGFloat y)
//    //设置图片的点击事件
//    imageView.userInteractionEnable = YES
//    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] iniWithTarget: self action: @selector(tapImageView)]
//    [imageView addGestureRecognizer: singleTap]
//
    
}




