//
//  ViewController.swift
//  App
//
//  Created by gyuni on 2024/04/16.
//

import UIKit
import DIContainer
import FooPresentationInterface

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        present(
            TabBarController(),
            animated: false
        )
    }

}

