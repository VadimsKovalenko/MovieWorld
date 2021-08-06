import UIKit

final class SearchViewController: BaseViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let navigationTitle = "Search"
    }
    
    // MARK: Properties
    
    private let searchController = UISearchController()

    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: Actions
    
    private func setupUI() {
        navigationItem.title = Constans.navigationTitle
        navigationItem.searchController = searchController
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
}
