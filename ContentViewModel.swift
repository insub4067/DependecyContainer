//
//  ContentViewModel.swift
//  SwiftUIPractice
//
//  Created by 김인섭 on 11/28/23.
//

import Foundation

class ContentViewModel: ObservableObject {
    
    private let container: DependencyContainer
    
    private var network: Networkable { container.resolve() }
    private var repository: Repositoriable { container.resolve() }
    
    init(container: DependencyContainer = .live) {
        self.container = container
    }
 
    func request() {
        network.request()
    }
    
    func fetch() {
        repository.fetch()
    }
}

