//
//  SearchViewController.swift
//  LetsAdopt
//
//  Created by marhuenda joris on 28/02/2022.
//

import UIKit
import MaterialComponents
import CollectionViewWaterfallLayout
import Nuke

class SearchViewController: UIViewController {

    @IBOutlet weak var searchTextField: MDCOutlinedTextField!
    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var historyTableView: UITableView!
    @IBOutlet weak var recentPetCollectionView: UICollectionView!
    
}
