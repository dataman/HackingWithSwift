//
//  ViewController.swift
//  Project18b
//
//  Created by Charley Jones on 9/30/15.
//  Copyright © 2015 Charley Jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 1 ... 100 {
            print("Got number \(i)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

