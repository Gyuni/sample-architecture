import FooDomainInterface

public protocol FooRepositoryInterface {
    func getFooEntities() -> [FooEntity]
}
