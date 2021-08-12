import UIKit

final class CountryViewController: UIViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let navigationTitle = "Country"
        static let hue: CGFloat = 6
        static let saturation: CGFloat = 58
        static let brightness: CGFloat = 90
        static let alpha: CGFloat = 1
        static let resetButtonItem = "Reset"
    }
    
    // MARK: Properties
    
    private let searchController: UISearchController = {
        let searchController = UISearchController()
        searchController.searchBar.tintColor = UIColor(
            hue: Constans.hue,
            saturation: Constans.saturation,
            brightness: Constans.brightness,
            alpha: Constans.alpha)
        searchController.hidesNavigationBarDuringPresentation = false
        return searchController
    }()
    private let resetButtonItem: UIBarButtonItem = {
        let reset = UIBarButtonItem()
        reset.title = Constans.resetButtonItem
        reset.style = .plain
        reset.action = #selector(resetButtonPressed)
        reset.tintColor = UIColor(
            hue: Constans.hue,
            saturation: Constans.saturation,
            brightness: Constans.brightness,
            alpha: Constans.alpha)
        return reset
    }()
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var countryTableView: UITableView!
    
    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IBActions
    
    @IBAction private func resetButtonPressed(_ barButtonItem: UIBarButtonItem) {
    }
    
    @IBAction private func selectButtonPressed(_ sender: UIButton) {
    }
    
    // MARK: Actions
    
    private func setupUI() {
        navigationItem.title = Constans.navigationTitle
        navigationItem.rightBarButtonItem = resetButtonItem
        navigationItem.searchController = searchController
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

// MARK: - UITableViewDelegate
extension CountryViewController: UITableViewDelegate {
}

// MARK: - UITableViewDataSource
extension CountryViewController: UITableViewDataSource {
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }
}
