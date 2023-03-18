//
//  ContentView.swift
//  SymbolRoller-SwiftUI
//
//  Created by KwangWoo Choi on 2023/03/18.
//

import SwiftUI

struct SymbolRollerView: View {
    
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @State var imageName: String = "moon"
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: imageName)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Spacer()
            
            Text(imageName)
                .font(.system(size: 40, weight: .bold))
            
            Spacer()
            
            Button {
                // imageName = symbols[Int.random(in: 0..<symbols.count)] -> 내가한거
                imageName = symbols.randomElement()! // 강의에서 한거
            } label: {
                HStack {
                    Image(systemName: "arrow.3.trianglepath")
                    VStack {
                        Text("Reload!")
                            .font(.system(size: 30,weight: .bold, design: .default))
                        Text("Click me to reload!")
                    }
                }
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, minHeight: 80)
            .background(.pink)
//            .clipShape(Capsule())
            .cornerRadius(40)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolRollerView()
    }
}
