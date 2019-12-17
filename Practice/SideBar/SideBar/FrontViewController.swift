//
//  FrontViewController.swift
//  SideBar
//
//  Created by Byoung_wook on 27/11/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import UIKit
class FrontViewController : UIViewController {
    
    @IBOutlet var sideBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let revealVC = self.revealViewController() {
            self.sideBarButton.target = revealVC
            self.sideBarButton.action = #selector(revealVC.revealToggle(_:))
            
            //제스쳐 추가
            
            self.view.addGestureRecognizer(revealVC.panGestureRecognizer())
        }
    }
}
