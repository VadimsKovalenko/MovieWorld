import UIKit

final class SearchViewController: BaseViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let navigationTitle = "Search"
        static let hue: CGFloat = 6
        static let saturation: CGFloat = 58
        static let brightness: CGFloat = 90
        static let alpha: CGFloat = 1
    }
    
    // MARK: Properties
    
    private let searchController: UISearchController = {
       let searchController = UISearchController()
        searchController.searchBar.tintColor = UIColor(hue: Constans.hue, saturation: Constans.saturation, brightness: Constans.brightness, alpha: Constans.alpha)
        searchController.hidesNavigationBarDuringPresentation = false
        return searchController
    }()
    private let filterButtonItem: UIBarButtonItem = {
       let filter = UIBarButtonItem()
        filter.image = UIImage(named: "icon-filter")
        filter.style = .plain
        filter.action = #selector(editButtonPressed(_:))
        filter.tintColor = UIColor(hue: Constans.hue, saturation: Constans.saturation, brightness: Constans.brightness, alpha: Constans.alpha)
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
        navigationItem.rightBarButtonItem = filterButtonItem
        navigationItem.searchController = searchController
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    @IBAction private func editButtonPressed(_ barButtonItem: UIBarButtonItem) {
        
    }
}
