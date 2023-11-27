//
//  Networkable.swift
//  SwiftUIPractice
//
//  Created by 김인섭 on 11/28/23.
//

import Foundation

protocol Networkable {
    func request()
}

struct Network: Networkable {
    func request() {
        print("Request!")
    }
}

struct FakeNetwork: Networkable {
    func request() {
        print("Fake Request!")
    }
}
