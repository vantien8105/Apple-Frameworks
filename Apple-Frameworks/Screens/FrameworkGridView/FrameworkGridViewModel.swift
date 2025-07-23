//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Văn Tiến on 21/07/2025.
//

import SwiftUI

final class FrameworkGridViewModel : ObservableObject { //final có nghĩa là gì, ObservableObject đucojw dùng khi nào
    var selectedFramework : Framework? {
        didSet{ isShowingDetailView = true }
    }
            
    @Published var isShowingDetailView = false
    var colunm : [GridItem] = [GridItem(.flexible()),
                               GridItem(.adaptive(minimum: 80)),
                               GridItem(.flexible())]
    //cái colunm với mảng cái GridItem này có nghĩa là gì
}
