//  StashCoachModuleTests.swift
//  StashCoachTests
//
//  Created by Alex Weisberger on 8/15/18.
//  Copyright © 2018 amwzero. All rights reserved.
//

@testable import StashCoach

import Quick
import Nimble

class StashCoachModuleTests: QuickSpec {
    override func spec() {
        describe("StashCoachModule") {
            var cell: AchievementsCollectionViewCell!
            let presenter = StashCoachPresenter()
            let view = UIStoryboard(
                name: "StashCoachViewController",
                bundle: Bundle.main
            ).instantiateInitialViewController() as! StashCoachViewController
            
            beforeEach {
                view.loadView()
                presenter.view = view
                view.presenter = presenter
                view.achievements = [Achievement(level: "1")]
                
                presenter.showAchievements()
                
                let indexPath = IndexPath(row: 0, section: 0)
                cell = view.collectionView(
                    view.achievementsCollectionView,
                    cellForItemAt: indexPath
                ) as! AchievementsCollectionViewCell
            }
            
            it("displays achievement information") {
                expect(cell.levelLabel.text).to(equal("1"))                
            }
        }
    }
}

