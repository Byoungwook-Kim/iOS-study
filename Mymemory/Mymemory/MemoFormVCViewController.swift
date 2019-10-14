//
//  MemoFormVCViewController.swift
//  Mymemory
//
//  Created by Byoung_wook on 02/10/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import UIKit

class MemoFormVCViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextViewDelegate {
    var subject: String!
    

    @IBOutlet var contents: UITextView!
    @IBOutlet var preview: UIImageView!
    
    //저장버튼 선택시 저장
    @IBAction func save(_ sender: Any) {
        guard self.contents.text?.isEmpty == false else {
            let alert = UIAlertController(title: nil, message: "내용을 입력해주세요", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
            return
        }
        let data = MemoData()
        data.title = self.subject
        data.contents = self.contents.text
        data.image = self.preview.image
        data.regdata = Date()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.memolist.append(data)
        
        _ = self.navigationController?.popViewController(animated: true)
    
    }
    
    //카메라 버튼 선택시 호출
    @IBAction func pick(_ sender: Any) {
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        
        //피커 화면에 표시
        self.present(picker, animated: false)
        
        
    }
    
    override func viewDidLoad() {
        self.contents.delegate = self

        // Do any additional setup after loading the view.
    }
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    if let editedImage = info[.editedImage] as? UIImage {
        self.preview.image = editedImage
        picker.dismiss(animated: false)
    }
    
    picker.dismiss(animated: false)
    }
    
    func textViewDidChange(_ textView: UITextView) {
        let contents = textView.text as NSString
        let length = ((contents.length > 15) ? 15 : contents.length)
        self.subject = contents.substring(with: NSRange (location: 0, length: length))
        self.navigationItem.title = subject
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
