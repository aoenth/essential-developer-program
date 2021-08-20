import UIKit

protocol FeedLoader {
    func loadFeed(completion: @escaping ([String]) -> Void)
}

struct Reachability {
    static let networkAvailable = false
}

class FeedViewController: UIViewController {
    var loader: FeedLoader!

    convenience init(loadFeed: FeedLoader) {
        self.init()
        self.loader = loadFeed
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        loader.loadFeed { loadedItems in
            // update UI
        }
    }
}

class RemoteFeedLoader: FeedLoader {
    func loadFeed(completion: @escaping ([String]) -> Void) {
        //
    }
}

class LocalFeedLoader: FeedLoader {
    func loadFeed(completion: @escaping ([String]) -> Void) {
        //
    }
}

class RemoteWithLocalFallbackFeedService: FeedLoader {
    let remote: RemoteFeedLoader
    let local: LocalFeedLoader

    init(remote: RemoteFeedLoader, local: LocalFeedLoader) {
        self.remote = remote
        self.local = local
    }

    func loadFeed(completion: @escaping ([String]) -> Void) {
        let load = Reachability.networkAvailable ? remote.loadFeed : local.loadFeed
        load(completion)
    }
}

let vc = FeedViewController(loadFeed: RemoteFeedLoader())
let vc2 = FeedViewController(loadFeed: LocalFeedLoader())
let vc3 = FeedViewController(loadFeed: RemoteWithLocalFallbackFeedService(remote: RemoteFeedLoader(), local: LocalFeedLoader()))
