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
        describe("Viewing Achievements") {
            var cell: AchievementsTableViewCell!

            beforeEach {
                let view = StashCoachRouter().assembleModule()
                view.loadView()
                view.viewDidLoad()
                
                let indexPath = IndexPath(row: 0, section: 0)
                cell = view.tableView(
                    view.achievementsTableView,
                    cellForRowAt: indexPath
                ) as! AchievementsTableViewCell
            }
            
            it("displays achievement information") {
                expect(cell.levelLabel.text).to(equal("1"))
                expect(cell.progressView.progress).to(equal(0.2))
            }
        }
    }
}

