import UIKit

import FooPresentationInterface
import FooDomainInterface

import BarPresentationInterface

import DIContainer

final class FooViewControllerImplementation: UIViewController, FooViewControllerInterface {
    private let service: FooServiceInterface

    init(
        service: FooServiceInterface = DIContainer.shared.resolve(type: FooServiceInterface.self)!
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
        button.setTitle(service.getMostAwesomeFooEntity().description, for: .normal)
        button.addTarget(self, action: #selector(presentBarViewController), for: .touchUpInside)

        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    @objc
    private func presentBarViewController() {
        present(DIContainer.shared.build(type: BarViewControllerInterface.self)!, animated: true)
    }
}
