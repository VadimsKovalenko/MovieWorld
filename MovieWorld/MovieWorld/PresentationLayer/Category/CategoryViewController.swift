import UIKit

final class CategoryViewController: BaseViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let navigationTitle = "Category"
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
