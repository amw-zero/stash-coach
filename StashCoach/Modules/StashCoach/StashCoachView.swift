//
//  StashCoachView.swift
//  StashCoach
//
//  Created by Alex Weisberger on 8/15/18.
//  Copyright © 2018 amwzero. All rights reserved.
//

import Foundation

protocol StashCoachView: class {
    var presenter: StashCoachModule! { get set }
    func showAchievements(_ achievements: [Achievement])
}
