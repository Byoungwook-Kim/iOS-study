//
//  SecondViewController.swift
//  Scene-Trans01
//
//  Created by Byoung_wook on 26/06/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//


import UIKit

class SeconViewController: UIViewController {
    
    @IBAction func Back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
