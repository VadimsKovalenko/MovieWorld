import UIKit

final class DetailCategoryViewController: UIViewController {
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var detailCategoryTableView: UITableView!
    
    // MARK: Properties
    
    var movies = [Movie]()
    
    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: Actions
    
    private func setupUI() {
        navigationController?.navigationBar.prefersLargeTitles = true
        detailCategoryTableView.register(UINib(nibName: DetailCategoryTableViewCell.reuseIdentifier,
                                               bundle: nil),
                                         forCellReuseIdentifier: DetailCategoryTableViewCell.reuseIdentifier)
    }
}

// MARK: - UITableViewDelegate
extension DetailCategoryViewController: UITableViewDelegate {
    
}

// MARK: - UITableViewDataSource
extension DetailCategoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DetailCategoryTableViewCell.reuseIdentifier,
                                                       for: indexPath) as? DetailCategoryTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(model: movies[indexPath.row])
        
        return cell
    }
}
