import BarDomainInterface
import BarDataInterface
import DIContainer

final class BarServiceImplementation: BarServiceInterface {    
    private let repository: BarRepositoryInterface

    init(
        repository: BarRepositoryInterface = DIContainer.shared.resolve(type: BarRepositoryInterface.self)!
    ) {
        self.repository = repository
    }

    func getMostAwesomeBarEntity() -> BarEntity {
        return repository.getBarEntities().last ?? BarEntity(description: "empty")
    }
}
