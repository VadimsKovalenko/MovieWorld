import UIKit

final class ReportAProblemViewController: UIViewController {
    
    // MARK: Constans
    
    private enum Constans {
        static let navigationTitle = "Feedback"
        static let navigationBackButtonTitle = "Cancel"
    }

    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        navigationItem.title = Constans.navigationTitle
        navigationItem.backButtonTitle = Constans.navigationBackButtonTitle
        
    }

}
