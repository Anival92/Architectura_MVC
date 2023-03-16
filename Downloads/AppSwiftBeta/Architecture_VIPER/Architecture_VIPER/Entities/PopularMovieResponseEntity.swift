//
//  PopularMovieResponseEntity.swift
//  Architecture_VIPER
//
//  Created by Luis Antonio Lavin Gutierrez on 05/03/23.
//

import Foundation

struct PopularMovieResponseEntity: Decodable {
    let results: [PopularMovieEntity]
}
