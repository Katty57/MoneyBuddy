//
//  AppDelegate.swift
//  MoneyBuddy
//
//  Created by  User on 27.05.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = WelcomeViewController()
        window?.makeKeyAndVisible()
        // Override point for customization after application launch.
        return true
    }
}

