import BarDomainInterface

final public class BarServiceStub: BarServiceInterface {
    public init() {}

    public var stubbedGetMostAwesomeBarEntity: (() -> BarEntity)!
    public func getMostAwesomeBarEntity() -> BarEntity {
        stubbedGetMostAwesomeBarEntity()
    }
}
