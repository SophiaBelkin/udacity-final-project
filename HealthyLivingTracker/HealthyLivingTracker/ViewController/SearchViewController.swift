//
//  SearchViewController.swift
//  HealthyLivingTracker
//
//  Created by Sophia Lu on 10/3/21.
//

import UIKit

class ResultVC: UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = .systemBlue
    }
}


class SearchViewController: UIViewController, UISearchResultsUpdating {
    let searchController = UISearchController(searchResultsController: ResultVC())
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Search"
        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController
    }
    
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
        
        print(text)
    }
    
}
