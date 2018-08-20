//
//  StashCoachViewController.swift
//  StashCoach
//
//  Created by Alex Weisberger on 8/15/18.
//  Copyright © 2018 amwzero. All rights reserved.
//

import UIKit

class StashCoachViewController: UIViewController, StashCoachView {
    static let achievementsCellReuseIdentifier = "AchievementsTableViewCell"
    var achievements: [Achievement] = []
    
    var presenter: StashCoachModule!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.showAchievements()
    }
    
    @IBOutlet weak var achievementsTableView: UITableView! {
        didSet {
            let nib = UINib(
                nibName: "AchievementsTableViewCell",
                bundle: nil
            )
           
            achievementsTableView.register(
                nib,
                forCellReuseIdentifier: type(of: self).achievementsCellReuseIdentifier
            )
        }
    }
    
    func showAchievements(_ achievements: [Achievement]) {
        self.achievements = achievements
        achievementsTableView.reloadData()
    }
}

// MARK - UITableViewDataSource

extension StashCoachViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return achievements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: StashCoachViewController.achievementsCellReuseIdentifier,
            for: indexPath
            ) as! AchievementsTableViewCell
        
        let achievement = achievements[indexPath.row]
        cell.configure(with: achievement)
        
        return cell
    }
}

extension StashCoachViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }
}
