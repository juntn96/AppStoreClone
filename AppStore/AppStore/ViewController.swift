//
//  ViewController.swift
//  AppStore
//
//  Created by Lam Ngoc Khanh on 8/30/17.
//  Copyright © 2017 Lam Ngoc Khanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var headerCollectionView: UICollectionView!
    var items: Array<AppItem> = []
    
    var swipeTimer: Timer!
    var currentItemIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let data = MockData()
        items = data.createMockData()
        
        swipeTimer = Timer()
        
        self.initTableView()
        self.initCollectionView()
        self.controlTimer()
    }
}

// init table view
extension ViewController {
    func initTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
}

// for tableview
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIndentifier = "ItemTableCell"
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIndentifier, for: indexPath) as? ItemTableViewCell
        else {
            fatalError("error")
        }
        return cell
    }
}
