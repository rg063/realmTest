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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func Database(_ sender: UIButton) {

        let tomato = VegetableList()
        tomato.name = "TOMATO"
        tomato.registDate = 20171027
        tomato.expireDate = 20171102
        print("name of vegetable: \(tomato.name)")
        
        // Get the default Realm
        let realm = try! Realm()
        // print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        try! realm.write {
            realm.add(tomato)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

