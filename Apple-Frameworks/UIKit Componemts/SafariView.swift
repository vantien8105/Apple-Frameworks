//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Văn Tiến on 22/07/2025.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let URL : URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>)
    ->  SFSafariViewController{
        SFSafariViewController(url: URL)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}
