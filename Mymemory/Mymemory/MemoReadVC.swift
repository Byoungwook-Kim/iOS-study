//
//  MemoReadVC.swift
//  Mymemory
//
//  Created by Byoung_wook on 02/10/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import UIKit

class MemoReadVC: UIViewController {
    
    var param : MemoData?
    @IBOutlet var subject: UILabel!
    @IBOutlet var contents: UILabel!
    @IBOutlet var img: UIImageView!

    override func viewDidLoad() {
        
        self.subject.text = param?.title
        self.contents.text = param?.contents
        self.img.image = param?.image
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd일 HH:mm분에 작성됨"
        let dateString = formatter.string(from: (param?.regdata)!)
        
        self.navigationItem.title = dateString

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
