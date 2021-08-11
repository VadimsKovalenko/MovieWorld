import UIKit

final class CastViewController: UIViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let navigationTitle = "Cast"
    }
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var castTableView: UITableView!
    
    // MARK: Properties
    
    var acters = [Acter]()
    
    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        navigationItem.title = Constans.navigationTitle
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.backButtonTitle = ""
        castTableView.register(UINib(nibName: MainCastTableViewCell.reuseIdentifier,
                                     bundle: nil),
                               forCellReuseIdentifier: MainCastTableViewCell.reuseIdentifier)
    }
}

// MARK: - UITableViewDelegate
extension CastViewController: UITableViewDelegate {
    
}

// MARK: - UITableViewDataSource
extension CastViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        acters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainCastTableViewCell.reuseIdentifier,
                                                       for: indexPath) as? MainCastTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(model: acters[indexPath.row])
        return cell
    }
}
