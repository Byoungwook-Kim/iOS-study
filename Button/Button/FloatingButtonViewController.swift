//
//  FloatingButtonViewController.swift
//  Button
//
//  Created by Byoung_wook on 2020/06/14.
//  Copyright © 2020 Byoung_wook. All rights reserved.
//

import UIKit

class FloatingButtonViewController: UIViewController {
    @IBOutlet var btn1CenterY: NSLayoutConstraint!
    @IBOutlet var btn2CenterY: NSLayoutConstraint!
    @IBOutlet var btn3CenterY: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn1CenterY.constant = 0
        btn2CenterY.constant = 0
        btn3CenterY.constant = 0
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1){
           
        }
        
        UIView.animate(withDuration: 1, delay: 1, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.btn1CenterY.constant = 80
            self.btn2CenterY.constant = 160
            self.btn3CenterY.constant = 240
                       
            self.view.layoutIfNeeded()
        }) { (completion) in
            
        }
        
    
    }

    @IBAction func dismisFloating(_ sender: Any) {
        
        UIView.animate(withDuration: 0.7, delay: 1, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.btn1CenterY.constant = 0
            self.btn2CenterY.constant = 0
            self.btn3CenterY.constant = 0
                       
            self.view.layoutIfNeeded()
        }) { (completion) in
            
            self.dismiss(animated: false, completion: nil)
            
        }
    }

}
