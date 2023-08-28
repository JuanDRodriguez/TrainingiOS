//
//  AppCoordinator.swift
//  ExampleViper
//
//  Created by JuanD Rodriguez on 27/08/23.
//

import UIKit
class AppCoordinator: Coordinator {
    var childs: [Coordinator] = []
    
    var navigation: UINavigationController
    init(navigation: UINavigationController){
        self.navigation = navigation
    }
    
    func start() {
        let mainCoordinator = MainCoordinator(navigation: navigation)
        self.childs.append(mainCoordinator)
        mainCoordinator.start()
    }
    
}
