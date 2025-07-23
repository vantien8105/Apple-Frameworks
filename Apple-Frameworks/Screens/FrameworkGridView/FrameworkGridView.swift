//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Văn Tiến on 20/07/2025.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVGrid(columns: viewModel.colunm) { //tại sao ở VGrid cần nhận đối số colunm này
                    
                    ForEach(MockData.frameworks){ framework in //tại sao cần identifier
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .navigationDestination(for: Framework.self) { framewowrk in
                FrameworkDetailView(framework: framewowrk)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}


