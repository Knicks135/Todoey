//
//  Category.swift
//  Todoey
//
//  Created by David Shi on 12/19/18.
//  Copyright © 2018 David Shi. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>() // set up one-to-many relationship with Item
}
