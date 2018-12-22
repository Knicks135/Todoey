//
//  Category.swift
//  Todoey
//
//  Created by David Shi on 12/19/18.
//  Copyright © 2018 David Shi. All rights reserved.
//

import Foundation
import RealmSwift
import ChameleonFramework

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var backgroundColor: String? = UIColor.randomFlat()?.hexValue()
    let items = List<Item>() // set up one-to-many relationship with Item
}
