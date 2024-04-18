//
//  DIContainer.swift
//  DIContainer
//
//  Created by Gyuni on 2024/04/16.
//

//  대충 구색만 갖춤!!
//  이런 식으로 만들면 안됨!!
final public class DIContainer {
    public typealias ID = String

    public static let shared = DIContainer()
    private init() {}

    private var services: [String: Any] = [:]
    private var builders: [String: (() -> Any)] = [:]

    public func register<Service>(type: Service.Type, id: ID? = nil, builder: @escaping (() -> Service)) {
        let key = generateKey(type: type, id: id)

        builders[key] = builder
        services[key] = nil
    }

    public func resolve<Service>(type: Service.Type, id: ID? = nil) -> Service? {
        let key = generateKey(type: type, id: id)

        if let service = services[key] as? Service {
            return service
        }

        if let factory = builders[key], let service = factory() as? Service {
            services[key] = service
            return service
        }

        return nil
    }

    public func build<Service>(type: Service.Type, id: ID? = nil) -> Service? {
        let key = generateKey(type: type, id: id)
        
        return builders[key]?() as? Service
    }

    private func generateKey<Service>(type: Service.Type, id: ID? = nil) -> String {
        var key: String = ""

        key.append("type: \(type)")
        
        if let id {
            key.append(", id: \(id)")
        }

        return key
    }

    public func clear() {
        services = [:]
        builders = [:]
    }
}
