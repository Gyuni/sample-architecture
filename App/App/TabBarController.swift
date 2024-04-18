//
//  TabBarController.swift
//  App
//
//  Created by gyuni on 2024/04/18.
//

import UIKit
import DIContainer
import FooPresentationInterface
import BarPresentationInterface

final class TabBarController: UITabBarController {
    init() {
        super.init(nibName: nil, bundle: nil)
        
        modalPresentationStyle = .fullScreen
        
        let fooVC = container.build(type: FooViewControllerInterface.self)!
        fooVC.tabBarItem = .init(title: "Foo", image: .checkmark, tag: 0)
        
        let barVC = container.build(type: BarViewControllerInterface.self)!
        barVC.tabBarItem = .init(title: "Bar", image: .checkmark, tag: 1)
        
        setViewControllers([fooVC, barVC], animated: true)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
