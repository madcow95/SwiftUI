//
//  StockRankViewModel.swift
//  StockRank-SwiftUI
//
//  Created by ChoiKwangWoo on 2023/03/20.
//

import Foundation

final class StockRankViewModel: ObservableObject {
    @Published var models: [StockModel] = StockModel.list
    
    var numOfFavorites: Int {
        return models.filter{ $0.isFavorite }.count
    }
    
    var favoriteStocks: String {
        return models.filter{ $0.isFavorite }.map{ $0.name }.joined(separator: ", ")
    }
}
