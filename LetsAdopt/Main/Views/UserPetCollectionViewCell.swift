//
//  UserPetCollectionViewCell.swift
//  LetsAdopt
//
//  Created by marhuenda joris on 06/03/2022.
//

import UIKit

class UserPetCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var petAvatarImage: UIImageView!
    @IBOutlet weak var addFavButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var petNameLabel: UILabel!
    @IBOutlet weak var postedDateLabel: UILabel!
    @IBOutlet weak var cellCardView: CardView!
}
