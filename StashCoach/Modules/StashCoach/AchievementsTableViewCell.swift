//
//  AchievementsCollectionViewCell.swift
//  StashCoach
//
//  Created by Alex Weisberger on 8/15/18.
//  Copyright © 2018 amwzero. All rights reserved.
//

import UIKit

class AchievementsTableViewCell: UITableViewCell {
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var contentContainerView: UIView! {
        didSet {
            contentContainerView.layer.cornerRadius = 10.0
        }
    }
    @IBOutlet weak var circleView: UIView! {
        didSet {
            circleView.layer.cornerRadius = 50.0
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
