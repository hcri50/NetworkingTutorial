//
//  CoinsViewModel.swift
//  NetworkingTutorial
//
//  Created by Robert De Saeger on 11/19/23.
//

import Foundation

class CoinsViewModel: ObservableObject {
    @Published var coin = ""
    @Published var price = ""
    
    init(coin: String = "", price: String = "") {
       fetchPrice()
    }
    func fetchPrice() {
    let urlString = "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd"
         
        guard let url = URL(string: urlString) else { return }
        print("Fetch price....")
        URLSession.shared.dataTask(with: url) { data, response, error in
            print("Did receive data \(data)?")
            print("Data from JSON \(data!) ")
        }.resume()
        
        print("Did reach the end of function")
    }
}
    
