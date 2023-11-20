//
//  ContentView.swift
//  NetworkingTutorial
//
//  Created by Robert De Saeger on 11/19/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = CoinsViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Text(viewModel.coin)
                Text(viewModel.price)
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
