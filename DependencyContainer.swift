//
//  DependencyContainer.swift
//  SwiftUIPractice
//
//  Created by 김인섭 on 11/28/23.
//

import Foundation

class DependencyContainer {
    
    static let live = DependencyContainer()
        .register(Network() as Networkable)
        .register(Repository() as Repositoriable)
    
    static let mock = DependencyContainer()
        .register(FakeNetwork() as Networkable)
        .register(FakeRepository() as Repositoriable)
    
    var registry = [String: Any]()

    @discardableResult
    func register<T>(_ dependency: T) -> Self {
        let key = String(describing: T.self)
        registry[key] = dependency
        return self
    }

    func resolve<T>() -> T {
        let key = String(describing: T.self)
        guard let dependency = registry[key] as? T else {
            fatalError("No registered dependency found for \(key)")
        }
        return dependency
    }
}
