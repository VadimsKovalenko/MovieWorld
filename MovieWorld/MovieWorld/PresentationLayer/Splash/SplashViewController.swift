import UIKit

class SplashViewController: UIViewController {
    
    // MARK: IBOutlets

    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    
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
       let bar = TabBarController()
        guard let urapBar = bar.viewControllers?.first else { return }
        AppDelegate.shared.changeRooViewController(urapBar)
    }
    
    private func startAnimatingSpinner() {
        activityIndicatorView.startAnimating()
    }
    
    private func stopAnimatingSpinner() {
        activityIndicatorView.stopAnimating()
        activityIndicatorView.isHidden = true
    }
}
