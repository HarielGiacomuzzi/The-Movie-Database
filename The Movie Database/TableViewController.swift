//
//  TableViewController.swift
//  The Movie Database
//
//  Created by Hariel Giacomuzzi on 21/10/18.
//  Copyright © 2018 Giacomuzzi. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: NSObject, UITableViewDelegate, UITableViewDataSource {
    private var view : UIView
    private var tableView : UITableView
    private var dataProvider : DataProvider
    private var cellIdentifier : String
    
    init(view: UIView, tableView: UITableView, dataProvider: DataProvider, cellIdentifier : String) {
        self.view = view
        self.tableView = tableView
        self.dataProvider = dataProvider
        self.cellIdentifier = cellIdentifier
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        return cell!
    }
    
    
}
