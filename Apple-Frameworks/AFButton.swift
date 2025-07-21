//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Văn Tiến on 20/07/2025.
//

import SwiftUI

struct AFButton: View {
    let title : String
    var body: some View {
        Text(title)
            .frame(width: 300, height: 50, alignment: .center)
            .font(.title2).fontWeight(.semibold)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

