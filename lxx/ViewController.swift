//
//  ViewController.swift
//  lxx
//
//  Created by Mac on 2019/4/1.
//  Copyright © 2019 YangSun. All rights reserved.
//
//
//  ViewController.swift
//  lxx
//
//  Created by niit_099 on 2019/4/1.
//  Copyright © 2019 niit_099. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = #colorLiteral(red: 0.9591775537, green: 0.9593380094, blue: 0.9591564536, alpha: 1)
        let screen = UIScreen.main.bounds
        
        //1. 创建NavigationBar
        let navigationBarHeight: CGFloat = 44//默认高度
        let navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 30 , width: screen.size.width, height: navigationBarHeight))
        let leftbtn = UIBarButtonItem(title:"返回",style:.plain,target: self,action: #selector(ViewController.save(_:)))
        let rightbtn = UIBarButtonItem(title:"登录",style:.plain,target: self,action: #selector(ViewController.add(_:)))
        
        leftbtn.tintColor = UIColor.orange
        let navigationItem = UINavigationItem(title:"会员登陆")
        navigationItem.leftBarButtonItem = leftbtn
        navigationItem.rightBarButtonItem = rightbtn
        
        navigationBar.items = [navigationItem]
        self.view.addSubview(navigationBar)
        
        
        let imgNum = UIImageView.init(frame: CGRect.init(x: 40, y: 0, width: 30, height: 20))
        //        imgview.image = UIImage.init(named: "audi.jpg");
        imgNum.image = UIImage.init(named: "phone.png")
        self.view.addSubview(imgNum);
        
        let imgPsw = UIImageView.init(frame: CGRect.init(x: 40, y: 0, width: 30, height: 20))
        //        imgview.image = UIImage.init(named: "audi.jpg");
        imgPsw.image = UIImage.init(named: "password.png")
        self.view.addSubview(imgPsw);
        
        let username = UITextField.init(frame: CGRect.init(x: 0, y: navigationBar.frame.origin.y + navigationBar.frame.size.height + 20, width: self.view.bounds.size.width, height: 30));
        username.backgroundColor = UIColor.white;
        username.placeholder = "手机号码";
        username.leftView = imgNum
        username.leftViewMode = UITextField.ViewMode.always
        username.textColor = UIColor.black;
        
        self.view.addSubview(username);
        
        let password = UITextField.init(frame: CGRect.init(x: 0, y: username.frame.origin.y + username.frame.size.height + 4, width: self.view.bounds.size.width, height: 30));
        password.backgroundColor = UIColor.white;
        password.placeholder = "密码";
        password.textColor = UIColor.black;
        password.leftView = imgPsw
        password.leftViewMode = UITextField.ViewMode.always
        self.view.addSubview(password);
        
        let btnForget = UIButton.init(frame: CGRect.init(x: 20, y:password.frame.origin.y + password.frame.height + 20 , width: 100, height: 30))
        btnForget.setTitle("忘记密码", for: UIControl.State.normal)
        btnForget.backgroundColor = self.view.backgroundColor
        btnForget.setTitleColor(#colorLiteral(red: 0.4756349325, green: 0.4756467342, blue: 0.4756404161, alpha: 1), for: UIControl.State.normal)
        
        self.view.addSubview(btnForget)
        
    }
    @objc func save(_ sender: AnyObject){
        
    }
    
    @objc func add(_ sender: AnyObject){
        
    }
}





    
    
    
    
    
    
    


}

