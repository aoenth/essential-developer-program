//
//  FeedItem.swift
//  FeedItem
//
//  Created by Kevin Peng on 2021-08-19.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}