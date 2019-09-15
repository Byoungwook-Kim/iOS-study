//
//  ViewController.swift
//  MiniBrowser
//
//  Created by Byoung_wook on 15/09/2019.
//  Copyright © 2019 Byoung_wook. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate, WKNavigationDelegate {
    @IBOutlet var bookmarkSegmentedControl: UISegmentedControl!
    @IBOutlet var urlTextField: UITextField!
    @IBOutlet var mainWebView: WKWebView!
    @IBOutlet var spinningActivityIndicatorView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let initialURL = "https://www.facebook.com"
        let myURL = URL(string:initialURL)
        let myRequest = URLRequest(url:myURL!)
        mainWebView.load(myRequest)
        urlTextField.text = initialURL
        mainWebView.navigationDelegate = self
       
    }
  
    @IBAction func bookMarkAction(_ sender: Any) {
        let bookMarkURL = bookmarkSegmentedControl.titleForSegment(at: bookmarkSegmentedControl.selectedSegmentIndex)
        
        let urlString = "https://www.\(bookMarkURL!).com"
        
        mainWebView.load(URLRequest(url: URL(string:urlString)!))
         urlTextField.text = urlString
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        var urlString = "\(urlTextField.text!)"
        if !urlString.hasPrefix("https://") {
            urlString = "https://\(urlTextField.text!)"
        }
        mainWebView.load(URLRequest(url: URL(string:urlString)!))
        textField.resignFirstResponder()
        return true
        
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        spinningActivityIndicatorView.startAnimating()
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        spinningActivityIndicatorView.stopAnimating()
    }
    
    @IBAction func gobackAction(_ sender: Any) {
        mainWebView.goBack()
    }
    @IBAction func goForwardAction(_ sender: Any) {
        mainWebView.goForward()
    }
    @IBAction func stopAction(_ sender: Any) {
        mainWebView.stopLoading()
    }
    @IBAction func refreshAction(_ sender: Any) {
        mainWebView.reload()
    }
    

}

