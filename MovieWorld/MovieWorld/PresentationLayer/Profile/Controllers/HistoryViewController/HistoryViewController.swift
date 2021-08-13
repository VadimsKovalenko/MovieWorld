import UIKit

final class HistoryViewController: UIViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let navigationTitle = "History"
    }
    
    // MARK: IBOutelts
    
    @IBOutlet private weak var historyTableView: UITableView!
    
    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: Actions
    
    private func setupUI() {
        navigationItem.title = Constans.navigationTitle
        navigationController?.navigationBar.prefersLargeTitles = true
        historyTableView.register(
            UINib(nibName: HistoryTableViewCell.reuseIdentifier,
                  bundle: nil),
            forCellReuseIdentifier: HistoryTableViewCell.reuseIdentifier)
    }
}

// MARK: - UITableViewDelegate
extension HistoryViewController: UITableViewDelegate {
}

// MARK: - UITableViewDataSource
extension HistoryViewController: UITableViewDataSource {
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
                withIdentifier: HistoryTableViewCell.reuseIdentifier,
                for: indexPath) as? HistoryTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
}
