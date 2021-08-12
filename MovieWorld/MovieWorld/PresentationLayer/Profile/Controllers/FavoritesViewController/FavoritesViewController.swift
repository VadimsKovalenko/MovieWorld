import UIKit

final class FavoritesViewController: UIViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let navigationTitle = "Favorites"
    }
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var favoritesTableView: UITableView!
    
    // MARK: Properties
    
    private lazy var segmentControll: UISegmentedControl = {
        let titles = ["Films","People"]
        let segmentControll = UISegmentedControl(items: titles)
        segmentControll.tintColor = .gray
        segmentControll.backgroundColor = .red
        segmentControll.selectedSegmentIndex = 0
        segmentControll.addTarget(self, action: #selector(segmentControllPressed), for: .touchUpInside)
        return segmentControll
    }()
    
    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: IBActions
    
    @IBAction private func segmentControllPressed(_ segmentControll: UISegmentedControl) {
    }
    
    // MARK: Actions
    
    private func setupUI() {
        navigationItem.title = Constans.navigationTitle
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.titleView = segmentControll
    }
}
