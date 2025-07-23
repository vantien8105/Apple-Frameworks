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
        NavigationView {
            ScrollView{
                LazyVGrid(columns: viewModel.colunm) { //tại sao ở VGrid cần nhận đối số colunm này
                    
                    ForEach(MockData.frameworks){ framework in //tại sao cần identifier
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) { //what's sheet ?
                FrameworkDetailView(framework: viewModel.selectedFramework!,
                                    isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}


