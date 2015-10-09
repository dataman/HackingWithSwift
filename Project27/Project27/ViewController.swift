//
//  ViewController.swift
//  Project27
//
//  Created by Charley Jones on 10/9/15.
//  Copyright © 2015 Charley Jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIView!
    
    @IBAction func redrawTapped(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func drawRectangle() {
        UIGraphicsBeginImageContextWithOptions(CGSize(width: 512, height: 512), false, 0)
        let context = UIGraphicsGetCurrentContext()
        
        // awesome drawing code
        
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        imageView.image = img
    }
    func drawRectangle() {
        UIGraphicsBeginImageContextWithOptions(CGSize(width: 512, height: 512), false, 0)
        let context = UIGraphicsGetCurrentContext()
        
        // awesome drawing code
        
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        imageView.image = img
    }

}

