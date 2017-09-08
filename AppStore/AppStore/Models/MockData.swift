//
//  MockData.swift
//  AppStore
//
//  Created by Lam Ngoc Khanh on 9/6/17.
//  Copyright © 2017 Lam Ngoc Khanh. All rights reserved.
//

import Foundation
import UIKit

struct MockData {
    
    let banner1 = UIImage(named: "banner1")
    let banner2 = UIImage(named: "banner2")
    let banner3 = UIImage(named: "banner3")
    let banner4 = UIImage(named: "banner4")
    
    let icon1 = UIImage(named: "icon1")
    let icon2 = UIImage(named: "icon2")
    let icon3 = UIImage(named: "icon3")
    let icon4 = UIImage(named: "icon4")
    
    func createMockData() -> Array<AppItem> {
        
        var items: Array<AppItem> = []
        
        let item1 = AppItem(name: "PlayerUnknow: Battleground", category: .action, bannerImage: self.banner1!, iconImage: self.icon1!, price: "29.9$")
        items.append(item1)
        
        let item2 = AppItem(name: "Defense of the Ancient 2", category: .puzzle, bannerImage: self.banner2!, iconImage: self.icon2!, price: "")
        items.append(item2)
        
        let item3 = AppItem(name: "League of Legends", category: .online, bannerImage: self.banner3!, iconImage: self.icon3!, price: "")
        items.append(item3)
        
        let item4 = AppItem(name: "Counter Strike: Global Online", category: .action, bannerImage: self.banner4!, iconImage: self.icon4!, price: "20$")
        items.append(item4)
        
        let item5 = AppItem(name: "Don't starve: Together", category: .online, bannerImage: self.banner2!, iconImage: self.icon3!, price: "19.99$")
        items.append(item5)
        
        let item6 = AppItem(name: "BattleField 1", category: .action, bannerImage: self.banner3!, iconImage: self.icon1!, price: "59.99$")
        items.append(item6)
        
        return items
    }
}
