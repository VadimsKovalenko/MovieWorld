import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let rootVC = SplashViewController()
        
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
        return true
    }
}

// MARK: - AppDelegate
extension AppDelegate {
    static var shared =  UIApplication.shared.delegate as! AppDelegate
    
    func showHome(completion: (() -> Void)? = nil) {
        let home = TabBarController()
        switchRootViewController(rootViewController: home, animated: true, completion: completion)
        
    }
    
    private func switchRootViewController(rootViewController: UIViewController,
                                          animated: Bool,
                                          completion: (() -> Void)?) {
        if animated {
            UIView.transition(with: window!,
                              duration: 0.5,
                              options: .transitionCrossDissolve) {
                let oldState: Bool = UIView.areAnimationsEnabled
                UIView.setAnimationsEnabled(false)
                self.window?.rootViewController = rootViewController
                UIView.setAnimationsEnabled(oldState)
            } completion: { _ in
                completion?()
            }
        } else {
            window?.rootViewController = rootViewController
            completion?()
        }
    }
}

