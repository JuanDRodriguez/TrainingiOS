//
//  Coordinator.swift
//  ExampleViper
//
//  Created by JuanD Rodriguez on 26/08/23.
//

import UIKit

protocol NavigateNextViewControllerProtocol{
    func navigateToNextPage()
}
protocol NavigateBackViewControllerProtocol{
    func navigateToBackPage()
}
typealias NavigateViewControllerProtocol = NavigateNextViewControllerProtocol & NavigateBackViewControllerProtocol
protocol Coordinator: class {
    var childs: [Coordinator] { get set }
    var navigation: UINavigationController { get }
    func start()
}
/*class FirstCoordinator: Coordinator {
    var chilCoordinator: [Coordinator] = []
    unowned let navigationController: UINavigationController
    required init(navigationcontroller: UINavigationController) {
        self.navigationController = navigationcontroller
    }
    
    func start() {
        let firstViewController: ViewController = ViewController()
        //ViewController.delegate = self
        self.navigationController.viewControllers = [firstViewController]
    }
}
class SecondCoordinator: Coordinator {
    var chilCoordinator: [Coordinator] = []
    unowned let navigationController: UINavigationController
    required init(navigationcontroller: UINavigationController) {
        self.navigationController = navigationcontroller
    }
    
    func start() {
        let secondViewController : SecondViewController = SecondViewController()
        //secondViewController.delegate = self
        self.navigationController.pushViewController(secondViewController, animated: true)
    }
}
extension FirstCoordinator: NavigateNextViewControllerProtocol {
    func navigateToNextPage() {
        //let secondViewController = Se
    }
    
    
}
*/
