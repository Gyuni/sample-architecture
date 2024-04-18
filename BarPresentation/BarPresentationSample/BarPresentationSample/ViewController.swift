//
//  ViewController.swift
//  BarPresentationSample
//
//  Created by gyuni on 2024/04/18.
//

import UIKit
import DIContainer
import BarPresentationInterface
import BarDomainInterface
import BarDomainStub

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        present(DIContainer.shared.build(type: BarViewControllerInterface.self)!, animated: true)
    }
}

