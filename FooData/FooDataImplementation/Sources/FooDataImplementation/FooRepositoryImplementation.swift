import FooDataInterface
import FooDomainInterface

final class FooRepositoryImplementation: FooRepositoryInterface {
    func getFooEntities() -> [FooEntity] {
        return [
            FooEntity(description: "Foo"),
            FooEntity(description: "Foo"),
            FooEntity(description: "Foo"),
            FooEntity(description: "Foo"),
            FooEntity(description: "Foo"),
        ]
    }
}
