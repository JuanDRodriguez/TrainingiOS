//
//  AppCoordinator.swift
//  ExampleViper
//
//  Created by JuanD Rodriguez on 28/08/23.
//

import UIKit

class AppCoordinatoor: Coordinator{
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        // inicializer the first Coordinator for show the rootView controller
        let mainCoordinator = MainCoordinator(navigationController: self.navigationController)
        mainCoordinator.start()
        childCoordinators.append(mainCoordinator)
    }
    
    
}
