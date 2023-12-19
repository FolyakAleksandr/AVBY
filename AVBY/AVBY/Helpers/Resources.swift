import UIKit

enum Resources {
    
    enum Colors {
        static var active = UIColor(hexString: "#8ca0bb")
        static var inActive = UIColor(hexString: "#3c93fd")
        static var backgroundTabBar = UIColor(hexString: "#171717")
        static var separator = UIColor(hexString: "#212121")
    }
    
    enum TabBar {
        enum Images {
            static var auto = UIImage(systemName: "car.2.fill")
            static var favorites = UIImage(systemName: "bookmark.fill")
            static var advertisements = UIImage(systemName: "rectangle.stack.fill.badge.plus")
            static var dialogues = UIImage(systemName: "ellipsis.bubble.fill")
            static var other = UIImage(systemName: "line.3.horizontal") 
        }
        enum Titles {
            static var auto = "Автомобили"
            static var favorites = "Избранное"
            static var advertisements = "Объявления"
            static var dialogues = "Диалоги"
            static var other = "Прочее"
        }
    }
}
