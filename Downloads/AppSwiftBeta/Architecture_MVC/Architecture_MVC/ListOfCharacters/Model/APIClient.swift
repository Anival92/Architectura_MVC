//
//  APIClient.swift
//  Architecture_MVC
//
//  Created by Luis Antonio Lavin Gutierrez on 16/03/23.
//

import Foundation

final class ListOfCharacteresAPIClient {
    
    func getListOfCharacteres() async -> CharacterModelResponse {
        let url = URL(string: "https://rickandmortyapi.com/api/character")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(CharacterModelResponse.self, from: data)
    }
    
}
