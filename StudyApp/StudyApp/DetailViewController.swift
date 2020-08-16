//
//  DetailViewController.swift
//  StudyApp
//
//  Created by Byoung_wook on 2020/07/25.
//  Copyright © 2020 Byoung_wook. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    var name: String?
    var bounty: Int?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

        // Do any additional setup after loading the view.
    }
    
    func updateUI(){
        if let name = self.name, let bounty = self.bounty {
            let img = UIImage(named: "\(name).jpg")
                imgView.image = img
                nameLabel.text = name
                bountyLabel.text = "\(bounty)"
            
        }
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
