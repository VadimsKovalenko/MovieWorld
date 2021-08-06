import UIKit

final class HistoryViewController: UIViewController {
    
    // MARK: IBOutelts
    
    @IBOutlet private weak var historyTableView: UITableView!
    
    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Actions
    
    private func setupUI() {
        navigationItem.title = "History"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
}

// MARK: - UITableViewDelegate
extension HistoryViewController: UITableViewDelegate {
    
}

// MARK: - UITableViewDataSource
extension HistoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HistoryTableViewCell.reuseIdentifier,
                                                       for: indexPath) as? HistoryTableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
}
