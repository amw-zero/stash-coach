//
//  StashCoachRouter.swift
//  StashCoach
//
//  Created by Alex Weisberger on 8/19/18.
//  Copyright © 2018 amwzero. All rights reserved.
//

import UIKit

class StashCoachRouter {
    func assembleModule() -> StashCoachViewController {
        let presenter = StashCoachPresenter()
        let interactor = StashCoachInteractor()
        let view = UIStoryboard(
            name: "StashCoachViewController",
            bundle: Bundle.main
        ).instantiateInitialViewController() as! StashCoachViewController
        interactor.output = presenter
        presenter.view = view
        presenter.interactor = interactor
        view.presenter = presenter

        return view
    }
}
