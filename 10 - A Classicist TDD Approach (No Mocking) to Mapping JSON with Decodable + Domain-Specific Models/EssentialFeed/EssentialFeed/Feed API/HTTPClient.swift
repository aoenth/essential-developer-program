//
//  HTTPClient.swift
//  EssentialFeedTests
//
//  Created by Kevin Peng on 2021-11-11.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
