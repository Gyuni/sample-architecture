import DIContainer
import BarPresentationInterface

public func start(
    container: DIContainer
) {
    container.register(type: BarViewControllerInterface.self) {
        BarViewControllerStub()
    }
}
