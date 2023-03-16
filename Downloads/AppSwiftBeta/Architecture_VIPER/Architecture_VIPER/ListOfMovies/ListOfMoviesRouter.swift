//
//  ListOfMoviesRouter.swift
//  Architecture_VIPER
//
//  Created by Luis Antonio Lavin Gutierrez on 05/03/23.
//

import Foundation
import UIKit

class ListOfMoviesRouter {
    
    func showListOfMovies(window: UIWindow?) {
        let view = ListOfMoviesView()
        let interactor = ListOfMoviesInteractor()
        let presenter = ListOfMoviesPresenter(listOfMoviesInteractor: interactor)
        presenter.ui = view
        view.presenter = presenter
        
        window?.rootViewController = view
        window?.makeKeyAndVisible()
        
    
    }
}

