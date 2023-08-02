//
//  ContentView.swift
//  Landmarks
//
//  Created by ChoiKwangWoo on 2023/07/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
//        VStack {
//            MapView()
//                .ignoresSafeArea(edges: .top)
//                .frame(height: 300)
//
//
//            CircleImage()
//                .offset(y: -130)
//                .padding(.bottom, -130)
//
//            VStack(alignment: .leading) {
//
//                Text("Turtle Rock")
//                    .font(.title)
//                HStack {
//                    Text("Joshua Tree National Park")
//                        .font(.subheadline)
//                    Spacer()
//                    Text("California")
//                        .font(.subheadline)
//                }
//                .font(.subheadline)
//                .foregroundColor(.secondary)
//
//                Divider()
//
//                Text("About Turtle Rock")
//                    .font(.title2)
//                Text("Descriptive text goes here.")
//            }
//            .padding()
//
//            Spacer()
//        }
        // 23.08.02
        /*ScrollView {
         // LazyVStack은 화면에 로드가 되었을때? 나머지 데이터를 불러온다?
            LazyVStack(alignment: .leading) {
                ForEach(1...100, id: \.self) {
                    Text("Row: \($0)")
                }
            }
        }*/
        
        // ForEach는 내가 기존에 알고있던 단순한 반복문이 아니라 struct로 만들어져 View?를 return 함.
        
//        let colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple]
//        ZStack {
//            return ForEach(0..<colors.count) {
//                Rectangle()
//                    .fill(colors[$0])
//                    .frame(width: 100, height: 100)
//                    .offset(x: CGFloat($0) * 10.0, y: CGFloat($0) * 10)
//            }
//        }
        
        VStack {
            Text("HI")
            Divider()
            Text("HELLO")
        }
        
        HStack {
            Text("HI")
            Divider()
            Text("HELLO")
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
