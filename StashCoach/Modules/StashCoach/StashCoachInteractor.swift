//
//  StashCoachInteractor.swift
//  StashCoach
//
//  Created by Alex Weisberger on 8/19/18.
//  Copyright © 2018 amwzero. All rights reserved.
//

import Foundation

protocol StashCoachInteractorOutput: class {
    func onAchievementsFetched(achievements: [Achievement])
}

class StashCoachInteractor {
    weak var output: StashCoachInteractorOutput!

    func fetchAchievements() {
        let achievements = [Achievement(level: "1")]
        output?.onAchievementsFetched(achievements: achievements)
    }
}
