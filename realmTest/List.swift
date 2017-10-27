//
//  List.swift
//  realmTest
//
//  Created by Goto on 2017/10/27.
//  Copyright © 2017年 Goto. All rights reserved.
//

import UIKit
import RealmSwift

// Use them like regular Swift objects
class VegetableList: Object {
    @objc dynamic var name = ""
    @objc dynamic var registDate  = 0
    @objc dynamic var expireDate  = 0
}
