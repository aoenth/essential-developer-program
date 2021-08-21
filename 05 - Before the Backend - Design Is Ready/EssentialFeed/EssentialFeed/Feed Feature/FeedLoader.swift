//
//  FeedLoader.swift
//  FeedLoader
//
//  Created by Kevin Peng on 2021-08-21.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
