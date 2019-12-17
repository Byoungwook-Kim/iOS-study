//
//  ViewController.swift
//  CSButton
//
//  Created by Byoung_wook on 16/11/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let csBtn = CSButton()
        csBtn.frame = CGRect(x: 30, y: 50, width: 150, height: 30)
        self.view.addSubview(csBtn)
    }


}

