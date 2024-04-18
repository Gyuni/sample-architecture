import DIContainer
import FooDataInterface

public func start(
    container: DIContainer
) {
    container.register(type: FooRepositoryInterface.self) {
        FooRepositoryImplementation()
    }
}
