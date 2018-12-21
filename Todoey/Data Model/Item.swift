//
//  Item.swift
//  Todoey
//
//  Created by David Shi on 12/19/18.
//  Copyright © 2018 David Shi. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date = Date()
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items") // set up inverse relationship
}
