//
//  MyProfileViewController.swift
//  LetsAdopt
//
//  Created by marhuenda joris on 28/02/2022.
//

import UIKit
import CollectionViewWaterfallLayout
import Nuke

class MyProfileViewController: UIViewController {

    @IBOutlet weak var userAvatarImageView: UIImageView!
    @IBOutlet weak var userFullName: UILabel!
    @IBOutlet weak var followersLabel: UILabel!
    @IBOutlet weak var followingLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var dobLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var listPetCollectionView: UICollectionView!
    
}
