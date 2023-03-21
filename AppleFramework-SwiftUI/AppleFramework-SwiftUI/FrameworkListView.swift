//
//  ContentView.swift
//  AppleFramework-SwiftUI
//
//  Created by KwangWoo Choi on 2023/03/19.
//

import SwiftUI

struct FrameworkListView: View {
       
    @StateObject var viewModel = FrameworkListViewModel()
    
    let layout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        /**
            Grid 만들기
            - UIKit : UICollectionView
                - Data, Presentation, Layout
            - SwiftUI : LazyVGrid, LazyHGrid
                - Data, Presentation, Layout
         */
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout) {
                    ForEach($viewModel.models) { $item in
                        FrameworkCell(framework: $item)
                            .onTapGesture {
                                viewModel.isShowingDetail.toggle()
                                viewModel.selectedItem = item
                            }
                    }
                }
                .padding([.top, .leading, .trailing], 16.0)
            }
            .navigationTitle("☀️ Apple Framework")
        }
        .sheet(isPresented: $viewModel.isShowingDetail) {
            let vm = FrameworkDetailViewModel(framework: viewModel.selectedItem!)
            FrameworkDetail(viewModel: vm)
        }
//        .fullScreenCover(isPresented: $viewModel.isShowingDetail) {
//            FrameworkDetail(framework: $viewModel.selectedItem)
//        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListView()
    }
}
