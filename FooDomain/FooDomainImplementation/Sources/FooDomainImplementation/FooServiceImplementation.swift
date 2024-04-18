import FooDomainInterface
import FooDataInterface
import DIContainer

final class FooServiceImplementation: FooServiceInterface {    
    private let repository: FooRepositoryInterface

    init(
        repository: FooRepositoryInterface = DIContainer.shared.resolve(type: FooRepositoryInterface.self)!
    ) {
        self.repository = repository
    }

    func getMostAwesomeFooEntity() -> FooEntity {
        return repository.getFooEntities().last ?? FooEntity(description: "empty")
    }
}
