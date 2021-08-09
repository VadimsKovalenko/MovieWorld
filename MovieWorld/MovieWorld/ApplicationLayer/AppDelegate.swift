import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let rootVC = TabBarController()
        let test = SplashViewController()
        
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
        return true
    }
    
    func changeRooViewController(_ viewController: UIViewController) {
        let snapShot: UIView = (window?.snapshotView(afterScreenUpdates: false))!
        viewController.view.addSubview(snapShot)
        
        window?.rootViewController = viewController
            
        UIView.animate(withDuration: 0.3) {
            snapShot.layer.opacity = 0
            snapShot.layer.transform = CATransform3DMakeScale(1.5, 1.5, 1.5)
        } completion: { _ in
            snapShot.removeFromSuperview()
        }

    }
}

// MARK: - AppDelegate
extension AppDelegate {
    static var shared =  UIApplication.shared.delegate as! AppDelegate
}

