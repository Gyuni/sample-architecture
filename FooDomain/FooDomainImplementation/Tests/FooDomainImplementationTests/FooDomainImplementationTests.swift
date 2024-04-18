import XCTest
@testable import FooDomainImplementation
import FooDomainInterface
import FooDataStub
import FooDataInterface

final class FooDomainImplementationTests: XCTestCase {
    func testExample() throws {
        let repository = FooRepositoryStub()

        repository.stubbedGetFooEntities = { return [FooEntity(description: "test")] }
        let service = FooServiceImplementation(repository: repository)

        XCTAssert(service.getMostAwesomeFooEntity().description == "test")
    }
}
