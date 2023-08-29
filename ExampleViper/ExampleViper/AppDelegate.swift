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
        let navigationController = UINavigationController()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        let appCoordinator = AppCoordinatoor(navigationController: navigationController)
        appCoordinator.start()
        window?.makeKeyAndVisible()
        
        return true
    }
    
}

