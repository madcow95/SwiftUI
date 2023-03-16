//
//  TextView.swift
//  SwiftUI-Basic
//
//  Created by ChoiKwangWoo on 2023/03/16.
//

import SwiftUI

struct TextView: View {
    var body: some View {    
        Text("Swift UI")
            .font(.system(size: 40, weight: .bold, design: .default))
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
