//
//  ViewController.swift
//  DigitalFrame
//
//  Created by Byoung_wook on 10/09/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var toggleButton: UIButton!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var speedLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let myImages = [UIImage(named: "01.jpg")!,
        UIImage(named: "02.jpg")!,
        UIImage(named: "03.jpeg")!,
        UIImage(named: "04.jpg")!,
        UIImage(named: "05.jpg")!,
        UIImage(named: "06.jpg")!,
        UIImage(named: "07.jpg")!,
        UIImage(named: "08.jpeg")!,
        UIImage(named: "09.jpg")!,
        UIImage(named: "10.jpg")!,
        UIImage(named: "11.jpg")!,
        UIImage(named: "12.jpeg")!,
        ]
        
        imgView.animationImages = myImages
        imgView.animationDuration = 12
        speedLabel.text = String(format: "%.2f", speedSlider.value)
    }
    
    @IBAction func toggleButton(_ sender: Any){
        
        if imgView.isAnimating{
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for: UIControl.State.normal)
        }else{
            imgView.animationDuration = Double(speedSlider.value)
            imgView.startAnimating()
            toggleButton.setTitle("Stop", for: UIControl.State.normal)
            
        }
    }
    
    @IBAction func speedSliderAction(_ sender: Any){
        imgView.animationDuration = Double(speedSlider.value)
        imgView.startAnimating()
        toggleButton.setTitle("Stop", for: UIControl.State.normal)
        speedLabel.text = String(format: "%.2f", speedSlider.value)
    }


}

