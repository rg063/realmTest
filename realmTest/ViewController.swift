//
//  ViewController.swift
//  realmTest
//
//  Created by Goto on 2017/10/27.
//  Copyright © 2017年 Goto. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    let calendar = Calendar(identifier: .gregorian)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let realm = try! Realm()
        encodefoods(realm: realm)
    }

    let products: [[String]] = [["TOMATO", "img0", "20171010", "20180101"], ["NEGI", "img1", "20171021", "20171121"]]
    func encodefoods(realm: Realm) {
        for food in products {
            let test = FoodList()
            test.setval(products: food)
            try! realm.write {
                realm.add(test)
            }
            print(Realm.Configuration.defaultConfiguration.fileURL!)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

