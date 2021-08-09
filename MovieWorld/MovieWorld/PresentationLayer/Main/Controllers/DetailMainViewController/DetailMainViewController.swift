import UIKit

class DetailMainViewController: UIViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let navigationTitle = "Movie"
        static let hue: CGFloat = 6
        static let saturation: CGFloat = 58
        static let brightness: CGFloat = 90
        static let alpha: CGFloat = 1
    }
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var detailMainTableView: UITableView!
    
    // MARK: Properties
    
    var movies = [Movie]()
    private lazy var refreshControl: UIRefreshControl = {
       let refresh = UIRefreshControl()
        refresh.tintColor = UIColor(hue: Constans.hue, saturation: Constans.saturation, brightness: Constans.brightness, alpha: Constans.alpha)
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
        navigationController?.navigationBar.prefersLargeTitles = true
        detailMainTableView.register(UINib(nibName: DetailMainTableViewCell.reuseIdentifier,
                                           bundle: nil),
                                     forCellReuseIdentifier: DetailMainTableViewCell.reuseIdentifier)
        detailMainTableView.refreshControl = refreshControl
    }
}

// MARK: -
extension DetailMainViewController: UITableViewDelegate {
    
}

// MARK: -
extension DetailMainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DetailMainTableViewCell.reuseIdentifier,
                                                       for: indexPath) as? DetailMainTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(model: movies[indexPath.row])
        
        return cell
    }
}
