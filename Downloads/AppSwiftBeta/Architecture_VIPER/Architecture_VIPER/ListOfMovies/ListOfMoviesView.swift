//
//  ListOfMoviesView.swift
//  Architecture_VIPER
//
//  Created by Luis Antonio Lavin Gutierrez on 05/03/23.
//

import Foundation
import UIKit

class ListOfMoviesView: UIViewController {
    
    var presenter : ListOfMoviesPresenter?
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        presenter?.onViewAppear()
    }
}

extension ListOfMoviesView: ListOfMoviesUI {
    func update(movies: [PopularMovieEntity]) {
        print("Datos Recibidos \(movies)")
    }
}
