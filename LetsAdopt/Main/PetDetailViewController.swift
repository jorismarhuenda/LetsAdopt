//
//  PetDetailViewController.swift
//  LetsAdopt
//
//  Created by marhuenda joris on 28/02/2022.
//

import UIKit
import MaterialComponents
import ImageSlideshow
import AlamofireImage
import Alamofire
import Nuke
import SCLAlertView

class PetDetailViewController: UIViewController {

    @IBOutlet weak var favButton: MDCButton!
    @IBOutlet weak var petImageSlideShow: ImageSlideshow!
    @IBOutlet weak var petNameLabel: UILabel!
    @IBOutlet weak var petAgeLabel: UILabel!
    @IBOutlet weak var petGenderLabel: UILabel!
    @IBOutlet weak var petAddressLabel: UILabel!
    @IBOutlet weak var petDescriptionLabel: UILabel!
    @IBOutlet weak var userAvatar: UIButton!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userEmailLabel: UILabel!
    @IBOutlet weak var phoneButton: UIButton!
    @IBOutlet weak var adoptMeButton: MDCButton!
    @IBOutlet weak var imageSSIndicator: UIPageControl!
    @IBOutlet weak var userAvatarImageView: UIImageView!
    
    @IBOutlet weak var testUserAvatar: UIImageView!
    
}
