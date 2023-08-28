//
//  AppDelegate.swift
//  ExampleViper
//
//  Created by JuanD Rodriguez on 24/08/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let navigationController = UINavigationController()

        window?.rootViewController = navigationController
        let appCoordinator = AppCoordinator(navigation: navigationController)
        appCoordinator.start()
        window?.makeKeyAndVisible()
        return true
    }
    
}

