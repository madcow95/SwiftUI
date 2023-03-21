//
//  FrameworkListVIewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by ChoiKwangWoo on 2023/03/21.
//

import Foundation

final class FrameworkListViewModel: ObservableObject {
    @Published var models: [AppleFramework] = AppleFramework.list
    @Published var isShowingDetail: Bool = false
    @Published var selectedItem: AppleFramework?
}
