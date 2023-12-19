import UIKit

class AdvertisementsController: BaseController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Ваши объявления"
        navigationController?.tabBarItem.title = Resources.Titles.TabBar.advertisements
    }
}
