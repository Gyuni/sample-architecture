import XCTest
@testable import BarDomainImplementation
import BarDomainInterface
import BarDataStub
import BarDataInterface

final class BarDomainImplementationTests: XCTestCase {
    func testExample() throws {
        let repository = BarRepositoryStub()

        repository.stubbedGetBarEntities = { return [BarEntity(description: "test")] }
        let service = BarServiceImplementation(repository: repository)

        XCTAssert(service.getMostAwesomeBarEntity().sourceModule == "test")
    }
}
