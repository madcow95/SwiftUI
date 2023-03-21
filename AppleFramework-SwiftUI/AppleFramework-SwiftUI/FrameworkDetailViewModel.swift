//
//  FrameworkDetailViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by ChoiKwangWoo on 2023/03/21.
//

import Foundation

final class FrameworkDetailViewModel: ObservableObject {
    @Published var framework: AppleFramework
    @Published var isSafariPresented: Bool = false
    
    init(framework: AppleFramework) {
        self.framework = framework
    }
}
