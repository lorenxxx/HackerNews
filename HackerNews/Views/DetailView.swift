//
//  DetailView.swift
//  HackerNews
//
//  Created by loren on 2023/12/2.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.baidu.com")
}
