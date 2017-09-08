//
//  Item.swift
//  AppStore
//
//  Created by Lam Ngoc Khanh on 9/6/17.
//  Copyright © 2017 Lam Ngoc Khanh. All rights reserved.
//

import Foundation
import UIKit

enum appCategory: String {
    case action = "Action"
    case puzzle = "Puzzle"
    case online = "Online"
}

class AppItem {
    
    var name: String
    var category: appCategory
    var bannerImage: UIImage
    var iconImage: UIImage
    var price: String
    
    init(name: String, category: appCategory, bannerImage: UIImage, iconImage: UIImage, price: String) {
        self.name = name
        self.category = category
        self.bannerImage = bannerImage
        self.iconImage = iconImage
        self.price = price
    }
}
