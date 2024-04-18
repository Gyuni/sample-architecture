import DIContainer
import BarDataInterface

public func start(
    container: DIContainer
) {
    container.register(type: BarRepositoryInterface.self) {
        BarRepositoryStub()
    }
}
