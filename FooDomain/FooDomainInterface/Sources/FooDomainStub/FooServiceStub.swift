import FooDomainInterface

final public class FooServiceStub: FooServiceInterface {
    public init() {}

    public var stubbedGetMostAwesomeFooEntity: (() -> FooEntity)!
    public func getMostAwesomeFooEntity() -> FooEntity {
        stubbedGetMostAwesomeFooEntity()
    }
}
