//
//  AppleFramework_SwiftUIApp.swift
//  AppleFramework-SwiftUI
//
//  Created by KwangWoo Choi on 2023/03/19.
//

import SwiftUI

@main
struct AppleFramework_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            FrameworkListView()
                .preferredColorScheme(.dark)
        }
    }
}
