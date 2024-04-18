import DIContainer
import FooPresentationInterface

public func start(
    container: DIContainer
) {
    container.register(type: FooViewControllerInterface.self) {
        FooViewControllerImplementation()
    }
}
