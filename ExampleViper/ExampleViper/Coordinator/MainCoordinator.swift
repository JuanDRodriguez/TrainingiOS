//
//  MainCoordinator.swift
//  ExampleViper
//
//  Created by JuanD Rodriguez on 28/08/23.
//

import UIKit

class MainCoordinator: Coordinator{
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.title = "inicialized from Coordinator"
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
