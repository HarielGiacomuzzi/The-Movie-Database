//
//  Configurations.swift
//  The Movie Database
//
//  Created by Hariel Giacomuzzi on 21/10/18.
//  Copyright © 2018 Giacomuzzi. All rights reserved.
//

import Foundation

enum APIEndpoints : String{
    case Upcoming = "https://api.themoviedb.org/3/movie/upcoming?api_key=c5850ed73901b8d268d0898a8a9d8bff&language=en-US"
    
    func baseUrl() -> String {
        return self.rawValue
    }
}
