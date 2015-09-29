//
//  Person.swift
//  Project10
//
//  Created by Charley Jones on 9/28/15.
//  Copyright © 2015 Charley Jones. All rights reserved.
//

import UIKit

class Person: NSObject {
    var name: String
    var image: String


    init(name: String, image: String) {
      self.name = name
      self.image = image
    }

}