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
        
        let autoVC = AutoController()
        let favoritesVC = FavoritesController()
        let advertisementsVC = AdvertisementsController()
        let dialoguesVC = DialoguesController()
        let otherVC = OtherController()
        
        let autoNavController = NavBarController(rootViewController: autoVC)
        let favoritesNavController = NavBarController(rootViewController: favoritesVC)
        let advertisementsNavController = NavBarController(rootViewController: advertisementsVC)
        let dialoguesNavController = NavBarController(rootViewController: dialoguesVC)
        let otherNavController = NavBarController(rootViewController: otherVC)
        
        autoNavController.tabBarItem = UITabBarItem(title: Resources.Titles.TabBar.auto,
                                                    image: Resources.Images.TabBar.auto,
                                                    tag: Tabs.auto.rawValue)
        favoritesNavController.tabBarItem = UITabBarItem(title: Resources.Titles.TabBar.favorites,
                                                    image: Resources.Images.TabBar.favorites,
                                                    tag: Tabs.favorites.rawValue)
        advertisementsNavController.tabBarItem = UITabBarItem(title: Resources.Titles.TabBar.advertisements,
                                                    image: Resources.Images.TabBar.advertisements,
                                                    tag: Tabs.advertisements.rawValue)
        dialoguesNavController.tabBarItem = UITabBarItem(title: Resources.Titles.TabBar.dialogues,
                                                    image: Resources.Images.TabBar.dialogues,
                                                    tag: Tabs.dialogues.rawValue)
        otherNavController.tabBarItem = UITabBarItem(title: Resources.Titles.TabBar.other,
                                                    image: Resources.Images.TabBar.other,
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
