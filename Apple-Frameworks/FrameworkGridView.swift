//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Văn Tiến on 20/07/2025.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var colunm : [GridItem] = [GridItem(.flexible()),
                               GridItem(.adaptive(minimum: 80)),
                               GridItem(.flexible())]
    //cái colunm với mảng cái GridItem này có nghĩa là gì
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: colunm) { //tại sao ở VGrid cần nhận đối số colunm này
                    
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

struct FrameworkTitleView : View{
    let framework : Framework
    
    var body : some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text (framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            //scale to fit & minimumscalefactor này có ý nghĩa là gì
        }
        .padding()
    }
}
