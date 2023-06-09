//
//  ThirdView.swift
//  EnvironmentObjTest
//
//  Created by ChoiKwangWoo on 2023/03/20.
//

import SwiftUI

struct ThirdView: View {
    
    @EnvironmentObject var userProfile: UserProfileSettings
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Current Age: \(userProfile.age)")
            
            Text("Third View")
            
            Button {
                userProfile.haveBirthDayParty()
            } label: {
                Text("Having Birthday party")
            }
        }
        .navigationTitle("Third View")
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView().environmentObject(UserProfileSettings())
    }
}
