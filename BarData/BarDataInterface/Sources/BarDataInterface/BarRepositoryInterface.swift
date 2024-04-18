import BarDomainInterface

public protocol BarRepositoryInterface {
    func getBarEntities() -> [BarEntity]
}
