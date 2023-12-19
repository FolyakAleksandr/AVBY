import UIKit

class AutoController: BaseController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Ваши автомобили"
        navigationController?.tabBarItem.title = Resources.Titles.TabBar.auto
        
        addNavBarButton()
    }
}
