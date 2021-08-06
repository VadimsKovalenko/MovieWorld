import UIKit

class DetailMainViewController: UIViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let navigationTitle = "Movie"
    }
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var detailMainTableView: UITableView!
    
    // MARK: Properties
    
    var movies = [Movie]()
        
    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: Actions
    
    private func setupUI() {
        navigationItem.title = Constans.navigationTitle
        navigationController?.navigationBar.prefersLargeTitles = true
        detailMainTableView.register(UINib(nibName: DetailMainTableViewCell.reuseIdentifier,
                                           bundle: nil),
                                     forCellReuseIdentifier: DetailMainTableViewCell.reuseIdentifier)
        
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
