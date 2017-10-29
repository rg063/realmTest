//
//  List.swift
//  realmTest
//
//  Created by Goto on 2017/10/27.
//  Copyright © 2017年 Goto. All rights reserved.
//

import UIKit
import RealmSwift
let calendar:Calendar = Calendar(identifier: .gregorian)

// Use them like regular Swift objects
class FoodList: Object {
    @objc dynamic var name = ""
    @objc dynamic var photo = ""
    @objc dynamic var registDate  = Date()
    @objc dynamic var expireDate  = Date()
    
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

    func daychange(datas: String) -> Date {
        let formatter :DateFormatter = DateFormatter()
        
        formatter.dateFormat = "yyyyMMdd"
        
        return formatter.date(from: datas)! as Date
    }
}

class VegetableList: Object {
    @objc dynamic var name = ""
    @objc dynamic var photo = ""
    @objc dynamic var registDate  = Date()
    @objc dynamic var expireDate  = Date()
    
    // プライマリーキーの設定
    override static func primaryKey() -> String? {
        return "name"
    }
    
    func setval(products:[String]) {
        self.name = products[0]
        self.photo = products[1]
        self.registDate = getNow()
        self.expireDate = deadLine(datas: Int(products[2])!)
    }
    func getNow() -> Date {
        let now = Date()
        let formatter :DateFormatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd"
        let dateString = formatter.string(from: now)
        return formatter.date(from: dateString)!
    }
    func deadLine(datas: Int) -> Date {
        let date = Date()
        let deadline = calendar.date(byAdding: .day, value: datas, to: calendar.startOfDay(for: date))
        let formatter :DateFormatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd"
        let dateString = formatter.string(from: deadline!)
        return formatter.date(from: dateString)!
    }
}

class VegetableDatabase: Object {
    @objc dynamic var name = ""
    @objc dynamic var photo = ""
    @objc dynamic var remainingDays  = ""
    
    // プライマリーキーの設定
    override static func primaryKey() -> String? {
        return "name"
    }
    
    func setval(products:[String]) {
        self.name = products[0]
        self.photo = products[1]
        self.remainingDays = products[2]
    }
}
