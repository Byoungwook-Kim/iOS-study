//
//  ViewController.swift
//  Scene-Trans01
//
//  Created by Byoung_wook on 26/06/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func moveNext(_ sender: Any) {
        
        let uvc = self.storyboard!.instantiateViewController(withIdentifier:    "SecondVC")
        
        uvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        
        self.present(uvc, animated:true)
        
    }
    
}

