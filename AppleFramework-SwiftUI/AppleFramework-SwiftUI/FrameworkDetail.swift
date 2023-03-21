//
//  FrameworkDetail.swift
//  AppleFramework-SwiftUI
//
//  Created by ChoiKwangWoo on 2023/03/19.
//

import SwiftUI

struct FrameworkDetail: View {
    
    @Binding var framework: AppleFramework?
    // 뭐야 이게?
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
//    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            if let framework = framework {
                Image(framework.imageName)
                Text(framework.name)
                Text(framework.description)
            } else {
                Text("Nothing Selected")
            }
            
            Button {
                print("Button Tapped")
                // 전체화면으로 페이지 이동했을 때 닫기위함
                presentationMode.wrappedValue.dismiss()
//                isShowingDetail = false
            } label: {
                Text("Button")
            }
        }
        .onAppear {
            print("Detail View: on appear -> 뷰가 보일 때, TC의 contentLoaded같은 느낌\n\(presentationMode.wrappedValue.isPresented)")
        }
        .onDisappear {
            print("Detail View: on appear -> 뷰가 사라질 때, TC의 contentUnloaded같은 느낌\n\(presentationMode.wrappedValue.isPresented)")
        }
    }
}

struct FrameworkDetail_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetail(framework: .constant(AppleFramework.list[0]))
    }
}
