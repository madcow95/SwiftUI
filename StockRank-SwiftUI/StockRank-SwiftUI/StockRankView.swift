//
//  ContentView.swift
//  StockRank-SwiftUI
//
//  Created by KwangWoo Choi on 2023/03/19.
//

import SwiftUI

struct StockRankView: View {
    
    @State var list = StockModel.list
    
    var body: some View {
        NavigationView {
            VStack {
                List($list) { $item in
                    ZStack {
                        NavigationLink {
                            StockDetailView(stock: $item)
                        } label: {
                            EmptyView()
                        }
                        StockRankRow(stock: $item)
                    }
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
                .navigationTitle("Stock Rank")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StockRankView()
            .preferredColorScheme(.dark)
    }
}
