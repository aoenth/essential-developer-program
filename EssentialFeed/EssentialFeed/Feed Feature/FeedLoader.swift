//
//  FeedLoader.swift
//  FeedLoader
//
//  Created by Kevin Peng on 2021-08-21.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
