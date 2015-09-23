//
//  ViewController.swift
//  Project4
//
//  Created by Charley Jones on 9/23/15.
//  Copyright © 2015 Charley Jones. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .Plain, target: self, action: "openTapped")
        let url = NSURL(string: "https://hackingwithswift.com")
        webView.loadRequest(NSURLRequest(URL:url!))
        webView.allowsBackForwardNavigationGestures=true
    }
    
    func openTapped(){
        let ac = UIAlertController(title: "Open page...", message: nil, preferredStyle: .ActionSheet)
        ac.addAction(UIAlertAction(title: "apple.com", style: .Default, handler: openPage))
        ac.addAction(UIAlertAction(title: "hackingwithswift.com", style: .Default, handler: openPage))
        ac.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
        presentViewController(ac,animated:true,completion:nil)
    }
    
    func openPage(action: UIAlertAction){
        let url = NSURL(string: "https:/" + action.title!)
        webView.loadRequest(NSURLRequest(URL:url!))
    }
    
    func webView(webView: WKWebView, didFinishNavigation navigation: WKNavigation!) {
        title = webView.title
    }
    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

