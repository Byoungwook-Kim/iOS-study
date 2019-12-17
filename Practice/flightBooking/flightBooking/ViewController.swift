//
//  ViewController.swift
//  flightBooking
//
//  Created by Byoung_wook on 16/09/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var dapatureDateButton: UIButton!
    @IBOutlet var ReturnDateLabel: UILabel!
    @IBOutlet var returnDateButton: UIButton!
    @IBOutlet var selectDatePicker: UIDatePicker!
    var buttonTag:Int = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ReturnDateLabel.isHidden = true
        returnDateButton.isHidden = true
        selectDatePicker.isHidden = true
    }
    @IBAction func showDatePickerAction(_ sender: UIButton) {
        if selectDatePicker.isHidden == false{
            selectDatePicker.isHidden = true
        }else{
            selectDatePicker.isHidden = false
        }
        buttonTag = sender.tag
    }
    @IBAction func showReturnDateAction(_ sender: UISwitch) {
//        if sender.isOn {
//
//        }else{
//            returnDateButton.isHidden = true
//            ReturnDateLabel.isHidden = true
//        }
//
        returnDateButton.isHidden = !sender.isOn
        ReturnDateLabel.isHidden = !sender.isOn
    }
    @IBAction func selectedDateAction(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "YY-MM-d hh:mma"
        let dateString = formatter.string(from: sender.date)
        if buttonTag == 1 {
             dapatureDateButton.setTitle(dateString, for: UIControl.State.normal)
        }else{
             returnDateButton.setTitle(dateString, for: UIControl.State.normal)
        }
       
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        selectDatePicker.isHidden = true
    }
    

}

