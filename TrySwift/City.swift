//
//  City.swift
//  TrySwift
//
//  Created by Charles Coutu-Nadeau on 11/12/14.
//  Copyright (c) 2014 churroslab. All rights reserved.
//

import UIKit

class City: NSObject {
    var name: String = ""
    var country: String = ""

    init(name:String, country:String){
        self.name = name
        self.country = country
    }
}
