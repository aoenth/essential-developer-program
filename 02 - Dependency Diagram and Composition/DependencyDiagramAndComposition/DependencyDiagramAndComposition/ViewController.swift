import UIKit

struct Reachability {
    static let networkAvailable = false
}

class RemoteFeedLoaderWithLocalFallback: FeedLoader {
    let localFeedLoader: LocalFeedLoader
    let remoteFeedLoader: RemoteFeedLoader
    init(localFeedLoader: LocalFeedLoader, remoteFeedLoader: RemoteFeedLoader) {
        self.localFeedLoader = localFeedLoader
        self.remoteFeedLoader = remoteFeedLoader
    }

    func loadFeed(completion: (FeedItem) -> ()) {
        let load = Reachability.networkAvailable ? remoteFeedLoader.loadFeed : localFeedLoader.loadFeed
        load(completion)
    }
}


class LocalFeedLoader: FeedLoader {
    func loadFeed(completion: (FeedItem) -> ()) {}
}

class RemoteFeedLoader: FeedLoader {
    func loadFeed(completion: (FeedItem) -> ()) {}
}

struct FeedItem {}

protocol FeedLoader {
    func loadFeed(completion: (FeedItem) -> Void)
}

class FeedViewController: UIViewController {
    var feedLoader: FeedLoader!

    convenience init(feedLoader: FeedLoader) {
        self.init()
        self.feedLoader = feedLoader
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        feedLoader.loadFeed { feedItem in

        }
    }
}