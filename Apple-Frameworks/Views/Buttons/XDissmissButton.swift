//
//  XDissmissButton.swift
//  Apple-Frameworks
//
//  Created by Văn Tiến on 23/07/2025.
//

import SwiftUI

struct XDissmissButton: View {
    @Binding var isShowingDetailView: Bool
    var body: some View {
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
    }
}
