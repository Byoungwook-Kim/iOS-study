//
//  ViewController.swift
//  SignUpForm
//
//  Created by Byoung_wook on 14/09/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var TelTextField: UITextField!
    @IBOutlet var blogTextFielf: UITextField!
    @IBOutlet var outputTextField: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func signUpAction(_ sender: Any) {
        outputTextField.text = "\(nameTextField.text!)님 가입을 축하합니다."
    }
    

}

