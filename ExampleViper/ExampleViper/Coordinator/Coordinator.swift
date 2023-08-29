//
//  Coordinator.swift
//  ExampleViper
//
//  Created by JuanD Rodriguez on 27/08/23.
//

import UIKit
protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}

