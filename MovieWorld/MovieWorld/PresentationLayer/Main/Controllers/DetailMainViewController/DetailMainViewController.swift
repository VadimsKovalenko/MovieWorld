import UIKit

class DetailMainViewController: UIViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let rowHeight: CGFloat = 120
        static let navigationTitle = "Movie"
        static let hue: CGFloat = 6
        static let saturation: CGFloat = 58
        static let brightness: CGFloat = 90
        static let alpha: CGFloat = 1
    }
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var detailMainTableView: UITableView!
    @IBOutlet private weak var detailMainCollectionView: UICollectionView!
    
    // MARK: Properties
    
    var settings = [Settings(name: "Drama"),
                    Settings(name: "Action movie"),
                    Settings(name: "Crime"),
                    Settings(name: "Fiction"),
                    Settings(name: "Musical"),
                    Settings(name: "Comedy"),
                    Settings(name: "Detective"),
                    Settings(name: "Documentary"),
                    Settings(name: "Adventures"),
                    Settings(name: "Adult")
    ]
    var movies = [Movie]()
    private lazy var refreshControl: UIRefreshControl = {
        let refresh = UIRefreshControl()
        refresh.tintColor = UIColor(hue: Constans.hue,
                                    saturation: Constans.saturation,
                                    brightness: Constans.brightness,
                                    alpha: Constans.alpha)
        refresh.addTarget(self, action: #selector(refreshControlPressed), for: .touchUpInside)
        return refresh
    }()
    
    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: IBActions
    
    @IBAction private func refreshControlPressed(_ refreshControll: UIRefreshControl) {
    }
    
    private func setupUI() {
        navigationItem.title = Constans.navigationTitle
        navigationItem.backButtonTitle = ""
        navigationController?.navigationBar.prefersLargeTitles = true
        detailMainCollectionView.register(
            UINib(nibName: DetailMainCollectionViewCell.reuseIdentifier,
                  bundle: nil),
            forCellWithReuseIdentifier: DetailMainCollectionViewCell.reuseIdentifier)
        detailMainTableView.register(
            UINib(nibName: DetailMainTableViewCell.reuseIdentifier,
                  bundle: nil),
            forCellReuseIdentifier: DetailMainTableViewCell.reuseIdentifier)
        detailMainTableView.rowHeight = Constans.rowHeight
        detailMainTableView.refreshControl = refreshControl
    }
}

// MARK: - UITableViewDelegate
extension DetailMainViewController: UITableViewDelegate {
    func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath) {
        let detailMoviesViewController = DetailMoviesViewController()
        let detailMovies = movies[indexPath.row]
        detailMoviesViewController.movies = [detailMovies]
        navigationController?.pushViewController(detailMoviesViewController, animated: true)
    }
}

// MARK: - UITableViewDataSource
extension DetailMainViewController: UITableViewDataSource {
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
        movies.count
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
                withIdentifier: DetailMainTableViewCell.reuseIdentifier,
                for: indexPath) as? DetailMainTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(model: movies[indexPath.row])
        return cell
    }
}

// MARK: - UITableViewDelegate
extension DetailMainViewController: UICollectionViewDelegate {
    
}

// MARK: - UICollectionViewDataSource
extension DetailMainViewController: UICollectionViewDataSource {
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int {
        settings.count
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: DetailMainCollectionViewCell.reuseIdentifier,
                for: indexPath) as? DetailMainCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.configure(model: settings[indexPath.item])
        return cell
    }
}
