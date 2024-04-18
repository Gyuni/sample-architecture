//
//  ViewController.swift
//  FooPresentationSample
//
//  Created by gyuni on 2024/04/18.
//

import UIKit
import DIContainer
import FooPresentationInterface
import FooDomainInterface
import FooDomainStub

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        present(DIContainer.shared.build(type: FooViewControllerInterface.self)!, animated: true)
    }
}

