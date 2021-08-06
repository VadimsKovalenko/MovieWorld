import UIKit

final class ProfileViewController: BaseViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let navigationTitle = "Profile"
    }

    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: Actions
    
    private func setupUI() {
        navigationItem.title = Constans.navigationTitle
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
