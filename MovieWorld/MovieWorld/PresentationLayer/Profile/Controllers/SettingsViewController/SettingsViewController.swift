import UIKit

final class SettingsViewController: UIViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let navigationTitle = "Settings"
    }
    
    // MARK: Lifecycle functions

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        navigationItem.title = Constans.navigationTitle
    }
}
