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
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                
                Button{
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            Spacer()
            FrameworkTitleView(framework: framework)
                .padding()
            Text(framework.description)
                .padding()
                .font(.body)
            Spacer()
            Button{
                
            } label: {
                AFButton(title: "Learn more")
            }
            
            
        }
    }
}

#Preview {
    FrameworkDetailView( framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
