import UIKit

final class MainViewController: BaseViewController {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var mainTableView: UITableView!
    
    // MARK: Properties
    
    private var movies = ["Ring of Rows","Spider Man","Venom","Arrow"]
    
    // MARK: Lifecycle functions

    override func viewDidLoad() {
        super.viewDidLoad()
        mainTableView.register(UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: "MainTableViewCell")
    }
}

// MARK: - UITableViewDelegate
extension MainViewController: UITableViewDelegate {
    
}

// MARK: - UITableViewDataSource
extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as? MainTableViewCell else {
            return UITableViewCell()
        }
        
        cell.titleLabel.text = movies[indexPath.row]
        
        return cell
    }
}
