//
//  ListOfMoviesPresenter.swift
//  Architecture_VIPER
//
//  Created by Luis Antonio Lavin Gutierrez on 05/03/23.
//

import Foundation

protocol ListOfMoviesUI: AnyObject{
    func update(movies: [PopularMovieEntity])
}

class ListOfMoviesPresenter {
    
    var ui: ListOfMoviesUI?
    
    private let listOfMoviesInteractor: ListOfMoviesInteractor
    
    init(listOfMoviesInteractor: ListOfMoviesInteractor) {
        self.listOfMoviesInteractor = listOfMoviesInteractor
    }
    
    func onViewAppear(){
        Task {
            let models = await listOfMoviesInteractor.getListOfMovies()
            ui?.update(movies: models.results)
            
        }
    }
    
    
}
