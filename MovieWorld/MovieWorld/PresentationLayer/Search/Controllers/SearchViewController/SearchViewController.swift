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
    
    private lazy var searchController: UISearchController = {
        let searchController = UISearchController()
        searchController.searchBar.tintColor = UIColor(
            hue: Constans.hue,
            saturation: Constans.saturation,
            brightness: Constans.brightness,
            alpha: Constans.alpha)
        searchController.hidesNavigationBarDuringPresentation = false
        return searchController
    }()
    private lazy var filterButtonItem: UIBarButtonItem = {
        let filter = UIBarButtonItem()
        filter.target = self
        filter.image = UIImage(named: "icon-filter")
        filter.style = .plain
        filter.action = #selector(editButtonPressed(_:))
        filter.tintColor = UIColor(
            hue: Constans.hue,
            saturation: Constans.saturation,
            brightness: Constans.brightness,
            alpha: Constans.alpha)
        return filter
    }()
    var movies = [Movie]()
    
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
        navigationItem.backButtonTitle = ""
        navigationController?.navigationBar.tintColor = UIColor(
            hue: Constans.hue,
            saturation: Constans.saturation,
            brightness: Constans.brightness,
            alpha: Constans.alpha)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @IBAction private func editButtonPressed(_ barButtonItem: UIBarButtonItem) {
        let filterViewController = FilterViewController()
        navigationController?.pushViewController(filterViewController, animated: true)
    }
}

// MARK: - UITableViewDelegate
extension SearchViewController: UITableViewDelegate {
    
}

// MARK: - UITableViewDataSource
extension SearchViewController: UITableViewDataSource {
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
        movies.count
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
                withIdentifier: SearchTableViewCell.reuseIdentifier,
                for: indexPath) as? SearchTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(model: movies[indexPath.row])
        return cell
    }
}
