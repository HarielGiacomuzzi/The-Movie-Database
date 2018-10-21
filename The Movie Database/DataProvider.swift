//
//  DataProvider.swift
//  The Movie Database
//
//  Created by Hariel Giacomuzzi on 21/10/18.
//  Copyright © 2018 Giacomuzzi. All rights reserved.
//

import Foundation
import Alamofire

class DataProvider: NSObject {
    private var source : String
    
    init(source : String) {
        self.source = source
    }
    
    func getMovies(page : Int = 1) -> [Movie] {
        var movies : [Movie] = []
        Alamofire.request("\(self.source)&page=\(page)").validate().responseJSON { response in
            switch response.result {
            case .success:
                let jsonData = response.data!
                do {
                    let decodedResponse = try JSONDecoder().decode(UpcomingResponse.self, from: jsonData)
                    movies = decodedResponse.results
                } catch {
                    print(error)
                }
            case .failure(let error):
                print(error)
            }
        }
        return movies
    }
    
}
