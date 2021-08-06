import UIKit

final class ProfileViewController: BaseViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let navigationTitle = "Profile"
    }
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var profileTableView: UITableView!
    
    
    // MARK: Properties
    
    private var profiles = [ProfileMovie(name: "Favorites"),
                            ProfileMovie(name: "History"),
                            ProfileMovie(name: "Settings"),
                            ProfileMovie(name: "Report a problem")
    ]
    
    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: IBActions
    
    @IBAction private func singInSingUpButtonPressed(_ sender: UIButton) {
    }
    
    
    // MARK: Actions
    
    private func setupUI() {
        navigationItem.title = Constans.navigationTitle
        navigationController?.navigationBar.prefersLargeTitles = true
        profileTableView.register(UINib(nibName: ProfileTableViewCell.reuseIdentifier,
                                        bundle: nil),
                                  forCellReuseIdentifier: ProfileTableViewCell.reuseIdentifier)
        profileTableView.tableFooterView = UIView()
    }
}

// MARK: - UITableViewDelegate
extension ProfileViewController: UITableViewDelegate {
    
}

// MARK: - UITableViewDataSource
extension ProfileViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        profiles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ProfileTableViewCell.reuseIdentifier,
                                                       for: indexPath) as? ProfileTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(model: profiles[indexPath.row])
        
        return cell
    }
    
}
