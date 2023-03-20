//
//  EnvironmentObjTestApp.swift
//  EnvironmentObjTest
//
//  Created by ChoiKwangWoo on 2023/03/21.
//

import SwiftUI

@main
struct EnvironmentObjTestApp: App {
    
    @StateObject var userProfile = UserProfileSettings()
    
    var body: some Scene {
        WindowGroup {
            FirstView().environmentObject(userProfile)
        }
    }
}
