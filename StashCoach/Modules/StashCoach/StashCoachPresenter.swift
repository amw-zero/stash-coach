//
//  StashCoachPresenter.swift
//  StashCoach
//
//  Created by Alex Weisberger on 8/15/18.
//  Copyright © 2018 amwzero. All rights reserved.
//

import Foundation

protocol StashCoachModule {
    func showAchievements()
}

class StashCoachPresenter: StashCoachModule {
    weak var view: StashCoachView!
    var interactor: StashCoachInteractor!
    
    func showAchievements() {
        interactor.fetchAchievements()
    }
}

extension StashCoachPresenter: StashCoachInteractorOutput {
    func onAchievementsFetched(achievements: [Achievement]) {
        view.showAchievements(achievements)
    }
}
