//
//  ViewController.swift
//  CSStepper
//
//  Created by Byoung_wook on 18/11/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let stepper = CSStepper()
        stepper.frame = CGRect(x: 30, y: 100, width: 130, height: 30)
        self.view.addSubview(stepper)
        
    }


}

