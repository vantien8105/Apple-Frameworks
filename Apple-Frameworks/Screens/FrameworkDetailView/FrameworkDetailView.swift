//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Văn Tiến on 20/07/2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework : Framework
    @Binding var isShowingDetailView : Bool //why binding is here? Does meaning same to reference argument?
    @State private var isShowingSafaryView = false 
    
    var body: some View {
        VStack{
            XDissmissButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            FrameworkTitleView(framework: framework)
                .padding()
            Text(framework.description)
                .padding()
                .font(.body)
            Spacer()
            Button{
                isShowingSafaryView = true
            } label: {
                AFButton(title: "Learn more")
            }
            .fullScreenCover(isPresented: $isShowingSafaryView, content: {
                SafariView(URL: URL(string: framework.urlString) ?? URL(string: "www.apple.com")! )
            })
            
        }
    }
}

#Preview {
    FrameworkDetailView( framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
