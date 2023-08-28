//
//  MainCoordinator.swift
//  ExampleViper
//
//  Created by JuanD Rodriguez on 27/08/23.
//

import UIKit
class MainCoordinator: Coordinator {
    var childs: [Coordinator] = []
    var navigation: UINavigationController
     
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    
    func start() {
        let vc = ViewController.instantiate()
        navigation.pushViewController(vc, animated: false)
    }
    
    
}
