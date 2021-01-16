//
//  ViewController.swift
//  SmcLunch
//
//  Created by 김희찬 on 2020/12/08.
//  Copyright © 2020 김희찬. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func loadView() {
        super.loadView()
        webView = WKWebView(frame: self.view.frame)
        webView.uiDelegate = self
        webView.navigationDelegate = self
        self.view = self.webView
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://heegong.pythonanywhere.com")
        let request = URLRequest(url: url!)
        webView.load(request)

        
    }

//    @IBAction func btnScale(_ sender: UIButton) {
//        goWeb(postfix: "scale")
//    }
//
//    @IBAction func btnFreq(_ sender: UIButton) {
//        goWeb(postfix: "freq")
//    }



}

