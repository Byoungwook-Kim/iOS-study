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
        
        let imageBtn = UIButton(type: .system)
           // 이미지 알림창 버튼 속성 설정
           imageBtn.frame = CGRect(x: 0, y: 200, width: 100, height: 30)
           imageBtn.center.x = self.view.frame.width / 2
           imageBtn.setTitle("Image Alert", for: .normal)
           imageBtn.addTarget(self, action: #selector(imageAlert(_:)), for: .touchUpInside)
           
           self.view.addSubview(imageBtn)
    }
    @objc func imageAlert(_ sender: Any){
        // 경고창 객체를 생성하고, OK 버튼을 추가한다.
           let alert = UIAlertController(title:nil,
                                         message: "이번 글의 평점은 다음과 같습니다.",
                                         preferredStyle: .alert)
           
           let okAction = UIAlertAction(title: "OK", style: .default)
           alert.addAction(okAction)
           
           // 콘텐츠 뷰 영역에 들어갈 뷰 컨트롤러를 생성하고, 알림창에 등록한다.
           let contentVC = ImageViewController()
           alert.setValue(contentVC, forKeyPath: "contentViewController")
           
           self.present(alert, animated: false)
        
    }
}
