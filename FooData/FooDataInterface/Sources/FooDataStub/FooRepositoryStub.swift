import FooDataInterface
import FooDomainInterface

final public class FooRepositoryStub: FooRepositoryInterface {
    public init() {}

    public var stubbedGetFooEntities: (() -> [FooEntity])!
    public func getFooEntities() -> [FooEntity] {
        stubbedGetFooEntities()
    }
}
