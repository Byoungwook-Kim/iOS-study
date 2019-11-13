//
//  MapAlertViewController.swift
//  MapAlert
//
//  Created by Byoung_wook on 13/11/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import UIKit
import MapKit
class MapAlertViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let alertBtn = UIButton(type: .system)
        alertBtn.frame = CGRect(x: 0, y: 150, width: 100, height: 30)
        alertBtn.center.x = self.view.frame.width / 2
        alertBtn.setTitle("Map Alert", for: .normal)
        alertBtn.addTarget(self, action: #selector(mapAlert(_:)), for: .touchUpInside)
        
        self.view.addSubview(alertBtn)
    }
    @objc func mapAlert(_ sender: UIButton){
        
        let alert = UIAlertController(title: nil, message: "여기가 맞습니까?", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        
        self.present(alert, animated: false)
        
        let contentVC = UIViewController()
        
        let mapkitView = MKMapView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        contentVC.view = mapkitView
        contentVC.preferredContentSize.height = 200
        alert.setValue(contentVC, forKeyPath: "contentViewController")
        
        self.present(alert, animated: false)
        
    }
}
