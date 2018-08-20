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

struct AchievementsResponse: Codable {
    let achievements: [Achievement]
}

class StashCoachInteractor {
    weak var output: StashCoachInteractorOutput!

    func fetchAchievements() {
        let fileUrl = Bundle.main.url(forResource: "achievements", withExtension: "json")!
        let achievementsJson = try! Data(contentsOf: fileUrl)
        let response = try! JSONDecoder().decode(AchievementsResponse.self, from: achievementsJson)
        output.onAchievementsFetched(achievements: response.achievements)
    }
}
