//  StashCoachModuleTests.swift
//  StashCoachTests
//
//  Created by Alex Weisberger on 8/15/18.
//  Copyright © 2018 amwzero. All rights reserved.
//

@testable import StashCoach

import Quick
import Nimble

class StashCoachViewAchievementsUseCaseSpec: QuickSpec {
    override func spec() {
        var cell: AchievementsTableViewCell!
        
        func setSubjectCell(fromRow row: Int) {
            let indexPath = IndexPath(row: row, section: 0)
            let view = StashCoachRouter().assembleModule()
            view.loadView()
            view.viewDidLoad()
            
            cell = view.tableView(
                view.achievementsTableView,
                cellForRowAt: indexPath
            ) as! AchievementsTableViewCell
        }
        
        describe("Viewing accessible Achievements") {
            beforeEach {
                setSubjectCell(fromRow: 0)
            }
            
            it("displays achievement information") {
                expect(cell.levelLabel.text).to(equal("1"))
                expect(cell.progressView.progress).to(equal(0.2))
                expect(cell.contentView.alpha).to(equal(1.0))
            }
        }
        
        describe("Viewing inaccessible Achievements") {
            beforeEach {
                setSubjectCell(fromRow: 1)
            }
            
            it("reduces the alpha of the achievement") {
                expect(cell.contentView.alpha).to(beCloseTo(0.4, within: 0.01))
            }
        }
    }
}

