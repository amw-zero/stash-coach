//
//  AppDelegate.swift
//  StashCoach
//
//  Created by Alex Weisberger on 8/14/18.
//  Copyright © 2018 amwzero. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = StashCoachRouter().assembleModule()
        window?.makeKeyAndVisible()
        
        return true
    }
}

