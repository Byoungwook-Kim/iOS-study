//
//  ListViewController.swift
//  UserDefaults
//
//  Created by Byoung_wook on 01/12/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import UIKit

class ListViewController : UITableViewController {
    
    override func viewDidLoad() {
        let plist = UserDefaults.standard
       
        self.name.text = plist.string(forKey: "name")
        self.married.isOn = plist.bool(forKey: "married")
        self.gender.selectedSegmentIndex = plist.integer(forKey: "gender")
    }
    
    @IBOutlet var name: UILabel!
    @IBOutlet var gender: UISegmentedControl!
    @IBOutlet var married: UISwitch!
    
    @IBAction func edit(_ sender: Any) {
         let alert = UIAlertController(title: nil, message: "이름을 입력하세요", preferredStyle: .alert)
        alert.addTextField(){
                       $0.text = self.name.text
                   }
        alert.addAction(UIAlertAction(title: "OK", style: .default){
                       (_) in
                       
                       let value = alert.textFields?[0].text
                       let plist = UserDefaults.standard
                       plist.set(value, forKey: "name")
                       plist.synchronize()
                       
                       self.name.text = value
                       
                       
                   })
                   self.present(alert, animated: false, completion: nil)
               }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let alert = UIAlertController(title: nil, message: "이름을 입력하세요", preferredStyle: .alert)
            
            alert.addTextField(){
                $0.text = self.name.text
            }
            alert.addAction(UIAlertAction(title: "OK", style: .default){
                (_) in
                
                let value = alert.textFields?[0].text
                let plist = UserDefaults.standard
                plist.set(value, forKey: "name")
                plist.synchronize()
                
                self.name.text = value
                
                
            })
            self.present(alert, animated: false, completion: nil)
        }
    }
    
    @IBAction func changeGender(_ sender: UISegmentedControl) {
        let value = sender.selectedSegmentIndex
                 
                 let plist = UserDefaults.standard
                 plist.set(value, forKey: "gender")
                 plist.synchronize()
    }
    
    @IBAction func changeMarried(_ sender: UISwitch) {
        let value = sender.isOn
        
        let plist = UserDefaults.standard
        plist.set(value, forKey: "married")
        plist.synchronize()
    }
}
