//
//  UserProfileSettings.swift
//  EnvironmentObjTest
//
//  Created by ChoiKwangWoo on 2023/03/20.
//

import Foundation

final class UserProfileSettings: ObservableObject {
    @Published var name: String = ""
    @Published var age: Int = 0
    
    func haveBirthDayParty() {
        age += 1
    }
}
