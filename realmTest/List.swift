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
class FoodList: Object {
    @objc dynamic var name = ""
    @objc dynamic var photo = ""
    @objc dynamic var registDate  = NSDate()
    @objc dynamic var expireDate  = NSDate()
    
    // プライマリーキーの設定
    override static func primaryKey() -> String? {
        return "name"
    }
    
    func setval(products:[String]) {
        self.name = products[0]
        self.photo = products[1]
        self.registDate = daychange(datas: products[2])
        self.expireDate = daychange(datas: products[3])
    }

    func daychange(datas: String) -> NSDate {
        let formatter :DateFormatter = DateFormatter()
        
        formatter.dateFormat = "yyyyMMdd"
        
        return formatter.date(from: datas)! as NSDate
    }
}
