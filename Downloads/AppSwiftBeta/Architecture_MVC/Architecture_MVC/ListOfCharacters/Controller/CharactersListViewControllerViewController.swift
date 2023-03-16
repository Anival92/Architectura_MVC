//
//  CharacterListViewController.swift
//  Architecture_MVC
//
//  Created by Luis Antonio Lavin Gutierrez on 16/03/23.
//

import UIKit

class CharactersListViewController: UIViewController {
    
    var mainView: CharactersListView{ self.view as! CharactersListView }
    let apiClient = ListOfCharacteresAPIClient()
    private var tableViewDataSource : ListOfCharacteresTableViewDataSource?
    private var tableViewDelagate : ListOfCharacteresTableViewDelegate?


    override func loadView() {
        view = CharactersListView()
        tableViewDelagate = ListOfCharacteresTableViewDelegate()
        
        tableViewDataSource = ListOfCharacteresTableViewDataSource(tableView: mainView.charactersTableView)
        mainView.charactersTableView.dataSource = tableViewDataSource
        mainView.charactersTableView.delegate = tableViewDelagate
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Task {
            let characters = await apiClient.getListOfCharacteres()
            print("Character \(characters)")
            tableViewDataSource?.set(characters: characters.results)
        }
    }

}

