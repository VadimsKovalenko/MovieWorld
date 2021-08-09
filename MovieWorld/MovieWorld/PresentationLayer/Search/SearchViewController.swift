import UIKit

final class SearchViewController: BaseViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let navigationTitle = "Search"
    }
    
    // MARK: Properties
    
    private let searchController = UISearchController()
    private let filterButtonItem: UIBarButtonItem = {
       var filter = UIBarButtonItem()
        filter.image = UIImage(named: "icon-filter")
        return filter
    }()

    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: Actions
    
    private func setupUI() {
        navigationItem.title = Constans.navigationTitle
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "icon-filter"), style: .plain, target: self, action: #selector(editButtonPressed))
        navigationItem.searchController = searchController
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    @IBAction private func editButtonPressed(_ barButtonItem: UIBarButtonItem) {
        
    }
}
