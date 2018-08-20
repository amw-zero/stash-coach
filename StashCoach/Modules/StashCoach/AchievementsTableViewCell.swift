//
//  AchievementsCollectionViewCell.swift
//  StashCoach
//
//  Created by Alex Weisberger on 8/15/18.
//  Copyright © 2018 amwzero. All rights reserved.
//

import UIKit
import Kingfisher

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
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var progressView: UIProgressView! {
        didSet {
            progressView.layer.cornerRadius = 5.0
        }
    }
    @IBOutlet weak var progressPointsLabel: UILabel!
    @IBOutlet weak var totalPointsLabel: UILabel!
    
    func configure(with achievement: Achievement) {
        levelLabel.text = achievement.level
        backgroundImageView.kf.setImage(with: URL(string: achievement.bgImageUrl))
        progressView.progress = Float32(achievement.progress) / Float32(achievement.total)
        progressPointsLabel.text = "\(achievement.progress)pts"
        totalPointsLabel.text = "\(achievement.total)pts"
        contentView.alpha = achievement.accessible ? 1.0 : 0.4
    }
}
