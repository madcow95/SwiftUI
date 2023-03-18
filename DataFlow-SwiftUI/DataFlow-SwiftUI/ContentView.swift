//
//  ContentView.swift
//  DataFlow-SwiftUI
//
//  Created by KwangWoo Choi on 2023/03/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PlayerView(episode: Episode.list[0])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
