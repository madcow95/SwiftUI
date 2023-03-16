//
//  ButtonView.swift
//  SwiftUI-Basic
//
//  Created by ChoiKwangWoo on 2023/03/16.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button {
            print("Button Clicked!!")
        } label: {
            Text("First Button in Swift UI")
                .font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(.white)       
        }
        .padding()
        .frame(height: 100)
        .background(.pink)
        .cornerRadius(20)

    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
