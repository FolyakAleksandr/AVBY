import UIKit

class BaseController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
}

extension BaseController {
    func configure() {
        view.backgroundColor = Resources.Colors.backgroundView
    }
    
    func addNavBarButton() {
        let myButton = UIBarButtonItem(image: UIImage(systemName: "arrow.up.arrow.down"), style: .done, target: self, action: #selector(tappedNavBarButton))
        myButton.tintColor = Resources.Colors.buttonTwoArrow
        navigationItem.rightBarButtonItem = myButton
    }
    @objc func tappedNavBarButton() {
        print("tapped")
    }
}
