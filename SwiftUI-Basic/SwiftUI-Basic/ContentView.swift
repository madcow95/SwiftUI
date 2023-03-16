//
//  ContentView.swift
//  SwiftUI-Basic
//
//  Created by ChoiKwangWoo on 2023/03/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ImageView()
            ButtonView()
            TextView()
            
            Spacer()
            
            HStack {
                ImageView()
                ButtonView()
                TextView()
            }
            
            Spacer()
            
            ZStack {
                ImageView()
                ButtonView()
                TextView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
