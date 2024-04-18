import UIKit

import BarPresentationInterface
import BarDomainInterface

import FooPresentationInterface

import DIContainer

final class BarViewControllerImplementation: UIViewController, BarViewControllerInterface {
    private let service: BarServiceInterface

    init(
        service: BarServiceInterface = DIContainer.shared.resolve(type: BarServiceInterface.self)!
    ) {
        self.service = service

        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemBackground

        let button = UIButton(configuration: .filled())
        button.setTitle(service.getMostAwesomeBarEntity().sourceModule, for: .normal)
        button.addTarget(self, action: #selector(presentFooViewController), for: .touchUpInside)

        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    @objc
    private func presentFooViewController() {
        present(DIContainer.shared.build(type: FooViewControllerInterface.self)!, animated: true)
    }
}
