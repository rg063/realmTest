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

        print(Realm.Configuration.defaultConfiguration.fileURL!)
        makeVegetableDB(realm: realm, DatabaseName: vegetable)
        makeVegetableList(realm: realm)
    }

    let vegetable: [[String]] = [["あしたば", "ashitaba", "1"],
                                 ["アスパラガス", "asparagus", "1"],
                                 ["アーティチョーク", "artichoke", "1"],
                                 ["うど", "udo", "1"],
                                 ["うり", "shirouri", "1"],
                                 ["エシャロット", "shallot", "1"],
                                 ["枝豆", "edamame", "1"],
                                 ["えのきたけ", "enoki", "1"],
                                 ["エリンギ", "eryngii", "1"],
                                 ["おかひじき", "okahijiki", "1"],
                                 ["オクラ", "okra", "1"],
                                 ["かぶ", "kabu", "1"],
                                 ["かぼちゃ", "pumpkin", "1"],
                                 ["からし菜", "karashina", "1"],
                                 ["カリフラワー", "cauliflower", "1"],
                                 ["きくらげ", "kikurage", "1"],
                                 ["キャベツ", "cabbage", "1"],
                                 ["きゅうり", "cucumber", "1"],
                                 ["空芯菜", "kuushinsai", "1"],
                                 ["グリーンピース", "miendou", "1"],
                                 ["クレソン", "watercress", "1"],
                                 ["くわい", "kuwai", "1"],
                                 ["ごぼう", "gobou", "1"],
                                 ["小松菜", "komatsuna", "1"],
                                 ["ゴーヤ", "goya", "1"],
                                 ["コールラビ", "kohlrabi", "1"],
                                 ["さつまいも", "satsumaimo", "1"],
                                 ["さといも", "satoimo", "1"],
                                 ["さやいんげん", "sayaingen", "1"],
                                 ["さやえんどう", "sayaendou", "1"],
                                 ["しいたけ", "shiitake", "1"],
                                 ["ししとう", "shishitou", "1"],
                                 ["シソ", "shiso", "1"],
                                 ["しめじ", "shimeji", "1"],
                                 ["じゃがいも", "potato", "1"],
                                 ["春菊", "shungiku", "1"],
                                 ["しょうが", "ginger", "1"],
                                 ["食用菊", "shokuyoukiku", "1"],
                                 ["ズッキーニ", "zucchini", "1"],
                                 ["スプラウト", "sprout", "1"],
                                 ["セロリ", "celery", "1"],
                                 ["そらまめ", "soramame", "1"],
                                 ["タアサイ", "tacai", "1"],
                                 ["大根", "daikon", "1"],
                                 ["たけのこ", "takenoko", "1"],
                                 ["玉ねぎ", "onion", "1"],
                                 ["チコリー", "chicory", "1"],
                                 ["チンゲンサイ", "chingensai", "1"],
                                 ["つるむらさき", "tsurumurasaki", "1"],
                                 ["とうがらし", "chilipepper", "1"],
                                 ["冬瓜", "tougan", "1"],
                                 ["とうもろこし", "sweetcorn", "1"],
                                 ["トマト", "tomato", "1"],
                                 ["トレビス", "trevise", "1"],
                                 ["なす", "eggplant", "1"],
                                 ["なばな", "nabanakuki", "1"],
                                 ["なめこ", "nameko", "1"],
                                 ["にら", "nira", "1"],
                                 ["にんじん", "carrot", "1"],
                                 ["にんにく", "garlic", "1"],
                                 ["ねぎ", "negi", "1"],
                                 ["白菜", "chinesecabbage", "1"],
                                 ["パセリ", "parsley", "1"],
                                 ["ひらたけ", "hiratake", "1"],
                                 ["ビーツ", "beet", "1"],
                                 ["ピーマン", "bellpepper", "1"],
                                 ["ふき", "fuki", "1"],
                                 ["ふだん草", "chard", "1"],
                                 ["ブロッコリー", "broccoli", "1"],
                                 ["ほうれん草", "spinach", "1"],
                                 ["まいたけ", "maitake", "1"],
                                 ["マッシュルーム", "mushroom", "1"],
                                 ["松茸", "matsutake", "1"],
                                 ["みずな", "mizuna", "1"],
                                 ["みつば", "mitsuba", "1"],
                                 ["みょうが", "hanamyouga", "1"],
                                 ["もやし", "moyashi", "1"],
                                 ["モロヘイヤ", "moroheiya", "1"],
                                 ["やまのいも", "yamanoimo", "1"],
                                 ["ヤーコン", "yacon", "1"],
                                 ["ゆり根", "yurine", "1"],
                                 ["らっきょう", "rakkyo", "1"],
                                 ["ルッコラ", "rocket", "1"],
                                 ["ルバーブ", "rhubarb", "1"],
                                 ["レタス", "lettuce", "1"],
                                 ["れんこん", "renkon", "1"]]

    let test: [String] = ["トマトリゾット", "TomatoRisotto", "3"]
    func makeVegetableDB(realm: Realm, DatabaseName: [[String]]) {
        for nood in DatabaseName {
            let item = VegetableDatabase()
            item.setval(products: nood)
            try! realm.write {
                realm.add(item)
            }
        }
    }
    func makeVegetableList(realm: Realm) {
        let item = VegetableList()
        item.setval(products: test)
        try! realm.write {
            realm.add(item)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

