//
//  ItemTableViewCell.swift
//  AppStore
//
//  Created by Lam Ngoc Khanh on 9/5/17.
//  Copyright © 2017 Lam Ngoc Khanh. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    var items: Array<AppItem> = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        let data = MockData()
        items = data.createMockData()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}

extension ItemTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellIndentifier = "ItemCollectionCell"
        guard
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIndentifier, for: indexPath) as? ItemCollectionViewCell
        else {
            fatalError("Error")
        }
        
        let item = items[indexPath.row]
        
        cell.itemImage.image = item.iconImage
        cell.itemImage.layer.masksToBounds = true
        cell.itemImage.layer.cornerRadius = 10
        cell.nameLabel.text = item.name
        cell.categoryLabel.text = item.category.rawValue
        cell.priceLabel.text = item.price
        return cell
    }
}
