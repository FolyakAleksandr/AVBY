import UIKit

final class AutoController: BaseController {
    
    // MARK: private properties
    private let tableView = UITableView()
    
    // MARK: Lyfecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Ваши автомобили"
        navigationController?.tabBarItem.title = Resources.Titles.TabBar.auto
        
        addNavBarButton()
        configureTableView()
    }
    
    // MARK: - API
    private func configureTableView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        ])
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CarsCell.self, forCellReuseIdentifier: "CarsCell")
    }
}

// MARK: - extension
extension AutoController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CarsCell", for: indexPath) as? CarsCell else { return UITableViewCell() }
        
        return cell
    }
    
    
}
