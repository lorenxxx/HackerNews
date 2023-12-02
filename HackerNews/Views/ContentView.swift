//
//  ContentView.swift
//  HackerNews
//
//  Created by loren on 2023/12/2.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager() 
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points)).padding()
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("Hacker News")
        }
        .onAppear(perform: {
            networkManager.fetchData()
        })
    }
}

#Preview {
    ContentView()
}
