//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by 김인섭 on 10/31/23.
//

import SwiftUI
import PopupView

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            Button("request") {
                viewModel.request()
            }
            Button("fetch") {
                viewModel.fetch()
            }
        }
    }
}

#Preview {
    ContentView()
}
