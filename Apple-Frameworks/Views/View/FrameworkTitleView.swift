//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Văn Tiến on 23/07/2025.
//

import SwiftUI

struct FrameworkTitleView : View{
    let framework : Framework
    
    var body : some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text (framework.name)
                .font(.title2)
                .foregroundColor(Color(.label))
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            //scale to fit & minimumscalefactor này có ý nghĩa là gì
        }
        .padding()
    }
}

