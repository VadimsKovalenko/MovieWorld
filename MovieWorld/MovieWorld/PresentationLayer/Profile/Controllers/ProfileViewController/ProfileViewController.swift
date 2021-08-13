import UIKit

final class ProfileViewController: BaseViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let navigationTitle = "Profile"
        static let hue: CGFloat = 6
        static let saturation: CGFloat = 58
        static let brightness: CGFloat = 90
        static let alpha: CGFloat = 1
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
    
    private func selectController(_ indexPath: IndexPath) -> UIViewController {
        switch indexPath.row {
        case 0:
            return FavoritesViewController()
        case 1:
            return HistoryViewController()
        case 2:
            return SettingsViewController()
        default:
            let reportAProblem = ReportAProblemViewController()
            reportAProblem.modalPresentationStyle = .currentContext
            return reportAProblem
        }
    }
    
    private func setupUI() {
        navigationItem.title = Constans.navigationTitle
        navigationItem.backButtonTitle = ""
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.tintColor = UIColor(
            hue: Constans.hue,
            saturation: Constans.saturation,
            brightness: Constans.brightness,
            alpha: Constans.alpha)
        profileTableView.register(
            UINib(nibName: ProfileTableViewCell.reuseIdentifier,
                  bundle: nil),
            forCellReuseIdentifier: ProfileTableViewCell.reuseIdentifier)
        profileTableView.tableFooterView = UIView()
    }
}

// MARK: - UITableViewDelegate
extension ProfileViewController: UITableViewDelegate {
    func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(selectController(indexPath), animated: true)
    }
}

// MARK: - UITableViewDataSource
extension ProfileViewController: UITableViewDataSource {
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
        profiles.count
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
                withIdentifier: ProfileTableViewCell.reuseIdentifier,
                for: indexPath) as? ProfileTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(model: profiles[indexPath.row])
        return cell
    }
    
}
