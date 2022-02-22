//
//  HomeViewController.swift
//  LetsAdopt
//
//  Created by marhuenda joris on 22/02/2022.
//

import UIKit
import Firebase
import MaterialComponents
import BottomPopUpView
import CollectionViewWaterfallLayout
import RangeSeekSlider
import Nuke

class HomeViewController: UIViewController {
    // MARK: Outlets
    @IBOutlet weak var searchTextField: MDCOutlinedTextField!
    @IBOutlet weak var filterButton: UIButton!
    @IBOutlet weak var notificationOutlets: UIButton!
    
    var bottomPopUpView: BottomPopUpView!
    var sortPickerView: UIPickerView!
    var genderPickerView: UIPickerView!
    
    let sortPickerViewDelegate = SortPickerViewDelegate()
    let genderPickerViewDelegate = GenderPickerViewDelegate()
    
    var ageRangeSlider: RangeSeekSlider!
    
    var pets = [Pet]()
    var dogs = [Pet]()
    var cats = [Pet]()
    var others = [Pet]()
    var sourcePets = [Pet]()
    
    var db = Firestore.firestore()
    
    var keyName : String = ""
    var isFav = false;
    
    @IBOutlet weak var allButton: UIButton!
    @IBOutlet weak var dogsButton: UIButton!
    @IBOutlet weak var catsButton: UIButton!
    @IBOutlet weak var othersButton: UIButton!
    
    @IBOutlet weak var allUIView: HalfRoundedUIView!
    @IBOutlet weak var dogsUIView: HalfRoundedUIView!
    @IBOutlet weak var catsUIView: HalfRoundedUIView!
    @IBOutlet weak var othersUIView: HalfRoundedUIView!
    
    @IBOutlet weak var allIconButton: UIButton!
    @IBOutlet weak var dogsIconButton: UIButton!
    @IBOutlet weak var catsIconButton: UIButton!
    @IBOutlet weak var othersIconButton: UIButton!
    
    @IBOutlet weak var allLabel: UILabel!
    @IBOutlet weak var dogsLabel: UILabel!
    @IBOutlet weak var catsLabel: UILabel!
    @IBOutlet weak var othersLabel: UILabel!
    
    @IBOutlet weak var listPetCollectionView: UICollectionView!
}
