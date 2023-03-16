//
//  ListOfMoviesInteractor.swift
//  Architecture_VIPER
//
//  Created by Luis Antonio Lavin Gutierrez on 05/03/23.
//

import Foundation

class ListOfMoviesInteractor {
    
    func getListOfMovies() async -> PopularMovieResponseEntity {
        
        let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=c360a483dc5fe0e2abb8895f97eed11c")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(PopularMovieResponseEntity.self, from: data)
                      
    }
                      
}
