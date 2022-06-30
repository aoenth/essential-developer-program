//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Peng, Kevin [C] on 2022-06-30.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
