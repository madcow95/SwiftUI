//
//  FrameworkDetail.swift
//  AppleFramework-SwiftUI
//
//  Created by ChoiKwangWoo on 2023/03/19.
//

import SwiftUI

struct FrameworkDetail: View {
    
    @StateObject var viewModel: FrameworkDetailViewModel
    
//    @Binding var framework: AppleFramework?
    // 뭐야 이게?
//    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
//    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack(spacing: 30) {
            Spacer()
            Image(viewModel.framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(viewModel.framework.name)
                .font(.system(size: 24, weight: .bold))
            Text(viewModel.framework.description)
                .font(.system(size: 16, weight: .regular))
            
            Spacer()
            
            Button {
                viewModel.isSafariPresented = true
                // 전체화면으로 페이지 이동했을 때 닫기위함, Modal로 띄워서 주석처리함
//                presentationMode.wrappedValue.dismiss()
//                isShowingDetail = false
            } label: {
                Text("Learn More")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, minHeight: 80)
            .background(.pink)
            .cornerRadius(40)
        }
        .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
        .sheet(isPresented: $viewModel.isSafariPresented) {
            SafariView(url: URL(string: viewModel.framework.urlString)!)
        }
    }
}

struct FrameworkDetail_Previews: PreviewProvider {
    static var previews: some View {
        let vm = FrameworkDetailViewModel(framework: AppleFramework.list[0])
        FrameworkDetail(viewModel: vm)
    }
}
