//
//  ViewController.swift
//  SummitValue-Back
//
//  Created by Byoung_wook on 29/06/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    
    var paramEmail: String?
    var paramUpdate: Bool?
    var paramInterval: Double?
    
    
    override func viewWillAppear(_ animated: Bool) {
        if let email = paramEmail {
            resultEmail.text = email
        }
        if let update = paramUpdate {
            resultUpdate.text = update==true ? "자동갱신":"자동갱신안함"
        }
        if let inverval = paramInterval {
            resultInterval.text = "\(Int(inverval))분마다"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }


}

