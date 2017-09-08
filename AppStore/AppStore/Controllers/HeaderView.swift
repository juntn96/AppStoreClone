//
//  HeaderView.swift
//  AppStore
//
//  Created by Lam Ngoc Khanh on 9/6/17.
//  Copyright © 2017 Lam Ngoc Khanh. All rights reserved.
//

import UIKit

// init collection view
extension ViewController {
    func initCollectionView() {
        self.headerCollectionView.showsHorizontalScrollIndicator = false
        self.headerCollectionView.showsVerticalScrollIndicator = false
        
        self.headerCollectionView.delegate = self
        self.headerCollectionView.dataSource = self
    }
}

// for collectionview
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellIndentifier = "HeaderCollectionCell"
        guard
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIndentifier, for: indexPath) as? HeaderCollectionViewCell
        else {
            fatalError("Errror")
        }
        
        let item = items[indexPath.row % self.items.count]
        cell.headerImage.image = item.bannerImage
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //var numberCell: CGFloat = 1.0
        let screenWidth = UIScreen.main.bounds.width
        let cellWidth = screenWidth
        let cellHeight = collectionView.frame.size.height
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        self.swipeTimer.invalidate()
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        self.controlTimer()
    }
}

extension ViewController {
    // controller auto swipe image
    func controlTimer() {
        self.swipeTimer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(ViewController.autoSwipePage), userInfo: nil, repeats: true)
    }
    
    func autoSwipePage() {
        if self.currentItemIndex < self.items.count - 1 {
            self.currentItemIndex += 1
        } else {
            self.currentItemIndex = 0
        }
        //self.currentItemIndex += 1
        self.headerCollectionView.scrollToItem(at: IndexPath(item: self.currentItemIndex, section: 0), at: .left, animated: true)
    }
}
