import DIContainer
import FooDomainInterface

public func start(
    container: DIContainer
) {
    container.register(type: FooServiceInterface.self) {
        FooServiceImplementation()
    }
}
