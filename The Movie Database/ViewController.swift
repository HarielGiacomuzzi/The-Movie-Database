//
//  ViewController.swift
//  The Movie Database
//
//  Created by Hariel Giacomuzzi on 21/10/18.
//  Copyright © 2018 Giacomuzzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var a = DataProvider(source: APIEndpoints.Upcoming.baseUrl())
        a.getMovies(page: 1)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

