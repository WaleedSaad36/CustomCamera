//
//  AppDelegate.swift
//  CustomCamera
//
//  Created by Waleed Saad on 10/03/2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let controller = HomeViewController()
        let navigation = UINavigationController(rootViewController: controller)
        self.window?.rootViewController = navigation
        self.window?.makeKeyAndVisible()
        return true
    }

}

