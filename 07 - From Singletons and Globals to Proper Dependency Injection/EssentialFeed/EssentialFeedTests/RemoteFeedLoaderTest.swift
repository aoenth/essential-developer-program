//
//  RemoteFeedLoaderTest.swift
//  RemoteFeedLoaderTest
//
//  Created by Kevin Peng on 2021-08-19.
//

import XCTest
@testable import EssentialFeed

class RemoteFeedLoader {

}

class HTTPClient {
    var requestedURL: URL?
}

class RemoteFeedLoaderTest: XCTestCase {
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()
        XCTAssertNil(client.requestedURL)
    }
}
