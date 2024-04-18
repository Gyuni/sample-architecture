import BarDataInterface
import BarDomainInterface

final public class BarRepositoryStub: BarRepositoryInterface {
    public init() {}

    public var stubbedGetBarEntities: (() -> [BarEntity])!
    public func getBarEntities() -> [BarEntity] {
        stubbedGetBarEntities()
    }
}
