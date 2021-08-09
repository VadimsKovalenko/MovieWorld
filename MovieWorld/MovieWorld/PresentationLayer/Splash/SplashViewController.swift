import UIKit

final class SplashViewController: UIViewController {
    
    // MARK: IBOutlets

    @IBOutlet private weak var activityIndicatorView: UIActivityIndicatorView!
    
    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startAnimatingSpinner()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.pushToHome()
            self.stopAnimatingSpinner()
        }
    }
    
    // MARK: Actions
    
    private func pushToHome() {
       let tabBar = TabBarController()
        let tabBarController = TabBarController(index: tabBar.defaultIndex)
        AppDelegate.shared.changeRooViewController(tabBarController)
    }
    
    private func startAnimatingSpinner() {
        activityIndicatorView.startAnimating()
    }
    
    private func stopAnimatingSpinner() {
        activityIndicatorView.stopAnimating()
        activityIndicatorView.isHidden = true
    }
}
