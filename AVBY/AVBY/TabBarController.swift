import UIKit

enum Tabs: Int {
    case auto
    case favorites
    case advertisements
    case dialogues
    case other
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.inActive
        tabBar.barTintColor = Resources.Colors.active
        tabBar.backgroundColor = Resources.Colors.backgroundTabBar
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let autoVC = UIViewController()
        let favoritesVC = UIViewController()
        let advertisementsVC = UIViewController()
        let dialoguesVC = UIViewController()
        let otherVC = UIViewController()
        
        let autoNavController = UINavigationController(rootViewController: autoVC)
        let favoritesNavController = UINavigationController(rootViewController: favoritesVC)
        let advertisementsNavController = UINavigationController(rootViewController: advertisementsVC)
        let dialoguesNavController = UINavigationController(rootViewController: dialoguesVC)
        let otherNavController = UINavigationController(rootViewController: otherVC)
        
        autoNavController.tabBarItem = UITabBarItem(title: Resources.TabBar.Titles.auto,
                                                    image: Resources.TabBar.Images.auto,
                                                    tag: Tabs.auto.rawValue)
        favoritesNavController.tabBarItem = UITabBarItem(title: Resources.TabBar.Titles.favorites,
                                                    image: Resources.TabBar.Images.favorites,
                                                    tag: Tabs.favorites.rawValue)
        advertisementsNavController.tabBarItem = UITabBarItem(title: Resources.TabBar.Titles.advertisements,
                                                    image: Resources.TabBar.Images.advertisements,
                                                    tag: Tabs.advertisements.rawValue)
        dialoguesNavController.tabBarItem = UITabBarItem(title: Resources.TabBar.Titles.dialogues,
                                                    image: Resources.TabBar.Images.dialogues,
                                                    tag: Tabs.dialogues.rawValue)
        otherNavController.tabBarItem = UITabBarItem(title: Resources.TabBar.Titles.other,
                                                    image: Resources.TabBar.Images.other,
                                                    tag: Tabs.other.rawValue)
        setViewControllers([
            autoNavController,
            favoritesNavController,
            advertisementsNavController,
            dialoguesNavController,
            otherNavController
        ], animated: false)
    }
}
