import UIKit

// Main module
extension ApiClient {
    func login(completion: (LoggedInUser) -> Void) {}
}

extension ApiClient {
    func loadFeed(completion: (FeedItem) -> Void) {}
}

// API module
class ApiClient {
    static let shared = ApiClient()
}

class MockApiClient: ApiClient {
}

// Login module
struct LoggedInUser {}


class LoginViewController: UIViewController {
    var login: (((LoggedInUser) -> Void) -> Void)?

    func didTapLoginButton() {
        login? { user in
            // show feed screen
        }
    }
}

// Feed module
struct FeedItem {}

class FeedViewController: UIViewController {
    var loadFeed: (((FeedItem) -> Void) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        loadFeed? { feedItem in

        }

    }
}