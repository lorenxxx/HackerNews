//
//  PostList.swift
//  HackerNews
//
//  Created by loren on 2023/12/2.
//

import Foundation

struct PostList: Decodable {
    
    let hits: [Post]
    
}

struct Post: Decodable, Identifiable {
    
    var id: String {
        return objectID
    }
    
    let objectID: String
    
    let points: Int
    
    let title: String
    
    let url: String?
    
}


