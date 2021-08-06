import UIKit

final class CategoryViewController: BaseViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let navigationTitle = "Category"
    }
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var categoryTableView: UITableView!
    
    // MARK: Properties
    
    private let categoryMovies = [CategoryMovie(name: "Top 250"),
                                  CategoryMovie(name: "Paramount Movies"),
                                  CategoryMovie(name: "Disaster movies"),
                                  CategoryMovie(name: "My french film festival"),
                                  CategoryMovie(name: "Post-apocalyptic movies"),
                                  CategoryMovie(name: "Sony movies"),
                                  CategoryMovie(name: "'START' movies"),
                                  CategoryMovie(name: "Movies about killers"),
                                  CategoryMovie(name: "Movies with Joaquin Phoenix"),
                                  CategoryMovie(name: "Movies about parent-children relationships"),
                                  CategoryMovie(name: "Cyberpunk movies"),
                                  CategoryMovie(name: "Movies that push boundaries")
    ]
    
    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: Actions
    
    private func setupUI() {
        navigationItem.title = Constans.navigationTitle
        navigationController?.navigationBar.prefersLargeTitles = true
        categoryTableView.register(UINib(nibName: CategoryTableViewCell.reuseIdentifier,
                                         bundle: nil),
                                   forCellReuseIdentifier: CategoryTableViewCell.reuseIdentifier)
        categoryTableView.tableFooterView = UIView()
    }
}

// MARK: - UITableViewDelegate
extension CategoryViewController: UITableViewDelegate {
    
}

// MARK: - UITableViewDataSource
extension CategoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        categoryMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CategoryTableViewCell.reuseIdentifier,
                                                       for: indexPath) as? CategoryTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(model: categoryMovies[indexPath.row])
        
        return cell
    }
}
