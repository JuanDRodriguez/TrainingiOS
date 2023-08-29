//
//  Storyboarded.swift
//  ExampleViper
//
//  Created by JuanD Rodriguez on 28/08/23.
//

import UIKit
protocol Storyboarded {
    //static func instantiate(withIdentifier identifier: UIViewController) -> Self
    static func instantiate() -> Self
    //static func instantiate(withIdentifier identifier: UIViewController.Identifier, withStoryboardName name: UIStoryboard.Name? = nil) -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
       let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
    /*static func instantiate(withIdentifier identifier: UIViewController.Identifier, withStoryboardName name: UIStoryboard.Name? = nil) -> Self{
       var nameStoryboard = name != nil ? name?.rawValue ?? "Main" : "Main"
        if let newName = name {nameStoryboard = newName.rawValue}
        let storyboard = UIStoryboard(name: nameStoryboard, bundle: .main)
        return storyboard.instantiateViewController(withIdentifier: identifier.rawValue) as! Self
    }*/
    
}
