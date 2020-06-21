//
//  ViewController.swift
//  OutletAction
//
//  Created by Byoung_wook on 2020/06/06.
//  Copyright © 2020 Byoung_wook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lbl: UILabel!
    
    @IBAction func updatelabel(_ sender: Any) {
        lbl.text = "Hi"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

