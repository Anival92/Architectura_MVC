//
//  ListOfCharacteresTableViewDelegate.swift
//  Architecture_MVC
//
//  Created by Luis Antonio Lavin Gutierrez on 16/03/23.
//

import Foundation
import UIKit

class  ListOfCharacteresTableViewDelegate: NSObject, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
}
