//
//  StashCoachViewController.swift
//  StashCoach
//
//  Created by Alex Weisberger on 8/15/18.
//  Copyright © 2018 amwzero. All rights reserved.
//

import UIKit

class StashCoachViewController: UIViewController, StashCoachView {
    static let achievementsCellReuseIdentifier = "AchievementsCollectionViewCell"
    var achievements: [Achievement] = []
    
    var presenter: StashCoachModule!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.showAchievements()
    }
    
    @IBOutlet weak var achievementsCollectionView: UICollectionView! {
        didSet {
            let nib = UINib(
                nibName: "AchievementsCollectionViewCell",
                bundle: nil
            )
            achievementsCollectionView.register(
                nib,
                forCellWithReuseIdentifier: type(of: self).achievementsCellReuseIdentifier
            )
        }
    }
    
    func showAchievements(_ achievements: [Achievement]) {
        self.achievements = achievements
        achievementsCollectionView.reloadData()
    }
}

// MARK - UICollectionViewDataSource

extension StashCoachViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return achievements.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: StashCoachViewController.achievementsCellReuseIdentifier,
            for: indexPath
        ) as! AchievementsCollectionViewCell

        let achievement = achievements[indexPath.row]
        cell.levelLabel.text = achievement.level

        return cell
    }
}
