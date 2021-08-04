import UIKit

final class TabBarController: UITabBarController {
    
    // MARK: lets/vars
    
    private lazy var mainVC: UINavigationController = {
        let vc = MainViewController()
        let nv = UINavigationController(rootViewController: vc)
        nv.tabBarItem.title = "Main"
        nv.tabBarItem.image = UIImage(named: "icon-tabbar-main")
       return nv
    }()
    
    private lazy var categoryVC: UINavigationController = {
        let vc = MainViewController()
        let nv = UINavigationController(rootViewController: vc)
        nv.tabBarItem.title = "Category"
        nv.tabBarItem.image = UIImage(named: "icon-tabbar-category")
       return nv
    }()
    
    private lazy var searchVC: UINavigationController = {
        let vc = MainViewController()
        let nv = UINavigationController(rootViewController: vc)
        nv.tabBarItem.title = "Search"
        nv.tabBarItem.image = UIImage(named: "icon-tabbar-search")
       return nv
    }()
    
    private lazy var profileVC: UINavigationController = {
        let vc = MainViewController()
        let nv = UINavigationController(rootViewController: vc)
        nv.tabBarItem.title = "Profile"
        nv.tabBarItem.image = UIImage(named: "icon-tabbar-profile")
       return nv
    }()

    // MARK: Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
       viewControllers = [mainVC,categoryVC,searchVC,profileVC]
    }
}
