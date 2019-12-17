//
//  SecondViewController.swift
//  TabBar
//
//  Created by Byoung_wook on 04/11/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import UIKit
class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //1
        let title = UILabel(frame: CGRect(x: 0, y:100, width: 100, height: 30))
        //2
        title.text = "두번째 탭"
        title.textColor = UIColor.red
        title.textAlignment = .center
        title.font = UIFont.boldSystemFont(ofSize: 14)
        //3
        title.sizeToFit()
        //
        title.center.x = self.view.frame.width / 2
        //5
        self.view.addSubview(title)
       
        
    }
}
