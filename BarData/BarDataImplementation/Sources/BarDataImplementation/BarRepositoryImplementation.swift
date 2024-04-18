import BarDataInterface
import BarDomainInterface

final class BarRepositoryImplementation: BarRepositoryInterface {
    func getBarEntities() -> [BarEntity] {
        return [
            BarEntity(description: "Bar"),
            BarEntity(description: "Bar"),
            BarEntity(description: "Bar"),
            BarEntity(description: "Bar"),
            BarEntity(description: "Bar"),
        ]
    }
}
