//
//  ViewController.swift
//  Button
//
//  Created by Byoung_wook on 2020/06/14.
//  Copyright © 2020 Byoung_wook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPopup" {
            let floatingVC = segue.destination as! FloatingButtonViewController
            floatingVC.modalPresentationStyle = .overCurrentContext
        }
    }


}

