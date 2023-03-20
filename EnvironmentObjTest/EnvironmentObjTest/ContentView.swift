//
//  ContentView.swift
//  EnvironmentObjTest
//
//  Created by ChoiKwangWoo on 2023/03/21.
//

import SwiftUI

struct FirstView: View {
    
    // 외부에서 꽂힌거(?)
    @EnvironmentObject var userProfile: UserProfileSettings
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("Current Age: \(userProfile.age)")
                
                NavigationLink {
                    SecondView()
                } label: {
                    Text("Second View")
                }
                
                Button {
                    userProfile.haveBirthDayParty()
                } label: {
                    Text("Having Birthday party")
                }
            }
            .navigationTitle("First View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView().environmentObject(UserProfileSettings())
    }
}
