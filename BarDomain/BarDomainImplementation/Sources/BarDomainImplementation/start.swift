import DIContainer
import BarDomainInterface

public func start(
    container: DIContainer
) {
    container.register(type: BarServiceInterface.self) {
        BarServiceImplementation()
    }
}
