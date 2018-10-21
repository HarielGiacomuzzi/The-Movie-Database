//
//  Movie.swift
//  The Movie Database
//
//  Created by Hariel Giacomuzzi on 21/10/18.
//  Copyright © 2018 Giacomuzzi. All rights reserved.
//

import Foundation

struct UpcomingResponse: Decodable{
    var results: [Movie]
    var page: Int
    var total_results: Int
    var dates : Dates
    var total_pages: Int
    
    struct Dates:Decodable  {
        var maximum: String
        var minimum: String
        
//        init(from decoder: Decoder) throws {
//            var container = try decoder.unkeyedContainer()
//            maximum = try container.decode(String.self)
//            minimum = try container.decode(String.self)
//        }
    }
}

struct Movie:Decodable {
    var vote_count: Int
    var id: Int
    var video: Bool
    var vote_average: Float
    var title: String
    var popularity: Float
    var poster_path: String
    var original_language: String
    var original_title: String
    var genre_ids: [Int]
    var backdrop_path: String
    var adult: Bool
    var overview: String
    var release_date: String
}
