//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Peng, Kevin [C] on 2022-05-31.
//

import XCTest

class LocalFeedLoader {
    init(store: FeedStore) { }
}

class FeedStore {
    var deleteCachedFeedCallCount = 0
}

class CacheFeedUseCaseTests: XCTestCase {
    func test() {
        let store = FeedStore()
        _ = LocalFeedLoader(store: store)
        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }
}
