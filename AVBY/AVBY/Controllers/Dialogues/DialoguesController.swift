import UIKit

class DialoguesController: BaseController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Ваши диалоги"
        navigationController?.tabBarItem.title = Resources.Titles.TabBar.dialogues
    }
}
