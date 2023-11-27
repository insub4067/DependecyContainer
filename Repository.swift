//
//  Repository.swift
//  SwiftUIPractice
//
//  Created by 김인섭 on 11/28/23.
//

import Foundation

protocol Repositoriable {
    func fetch()
}

struct Repository: Repositoriable {
    func fetch() {
        print("Fetch!")
    }
}

struct FakeRepository: Repositoriable {
    func fetch() {
        print("Fake Fetch!")
    }
}
