//
//  CustomTabBarView.swift
//  MoneyBuddy
//
//  Created by  User on 28.05.2022.
//

import UIKit

class CustomTabBArView: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVC = HomeViewController()
        let homeBarItem = UITabBarItem()
        homeBarItem.image = UIImage(named: "home")
        homeBarItem.title = "Гланая"
        homeVC.tabBarItem = homeBarItem
        let homeNavController = UINavigationController(rootViewController: homeVC)
        
        let goalVC = GoalViewController()
        let goalBarItem = UITabBarItem()
        goalBarItem.image = UIImage(named: "target")
        goalBarItem.title = "Цель"
        goalVC.tabBarItem = goalBarItem
        let goalNavController = UINavigationController(rootViewController: goalVC)
        
        let profileVC = ProfileViewController()
        let profileBarItem = UITabBarItem()
        profileBarItem.image = UIImage(named: "settings")
        profileBarItem.title = "Настройки"
        profileVC.tabBarItem = profileBarItem
        let profileNavController = UINavigationController(rootViewController: profileVC)
        
        let shopVC = ShopViewController()
        let shopBarItem = UITabBarItem()
        shopBarItem.image = UIImage(named: "shop")
        shopBarItem.title = "Магазины"
        shopVC.tabBarItem = shopBarItem
        let shopNavController = UINavigationController(rootViewController: shopVC)
        
        let reportVC = ReportViewController()
        let reportBarItem = UITabBarItem()
        reportBarItem.image = UIImage(named: "report")
        reportBarItem.title = "Отчет"
        reportVC.tabBarItem = reportBarItem
        let reportNavController = UINavigationController(rootViewController: reportVC)
        
        setViewControllers([homeNavController, goalNavController, shopNavController, reportNavController, profileNavController], animated: true)
    }
}
