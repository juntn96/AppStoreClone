//
//  ScrollViewController.swift
//  AppStore
//
//  Created by Lam Ngoc Khanh on 9/7/17.
//  Copyright © 2017 Lam Ngoc Khanh. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let heightOfNavBar: CGFloat = 64
        if scrollView.tag == 1000 {
            let scrollOffset = scrollView.contentOffset.y
//            print(scrollOffset)
            if scrollOffset < 0 {
                headerView.frame.origin.y = heightOfNavBar
            }
            if scrollOffset > (0 - heightOfNavBar) {
                headerView.frame.origin.y = 0 - scrollView.contentOffset.y
            }
        }
    }
}
