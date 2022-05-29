//
//  GoalViewController.swift
//  MoneyBuddy
//
//  Created by  User on 28.05.2022.
//

import UIKit

class GoalViewController: UIViewController {
    
    static var goals = [Goal]()
    
    private lazy var tableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(GoalTableViewCell.self, forCellReuseIdentifier: GoalTableViewCell.typeName)
        table.backgroundColor = UIColor(red: 0.88, green: 0.91, blue: 0.93, alpha: 1.0)
        table.separatorStyle = .none
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        setUpView()
        setUpSubviews()
        // Do any additional setup after loading the view.
    }
    
    func setUpView() {
        view.backgroundColor = UIColor(red: 0.88, green: 0.91, blue: 0.93, alpha: 1.0)
        let label = UILabel()
        label.text = "Цели"
        label.font = .systemFont(ofSize: 24)
        self.navigationItem.titleView = label
        
        let item = UIBarButtonItem()
        item.image = UIImage(named: "plus")
        item.target = self
        item.action = #selector(showNewTargetPage(_:))
        self.navigationItem.rightBarButtonItem = item
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setUpView()
        setUpSubviews()
        tableView.reloadData()
        
        self.tabBarController?.tabBar.backgroundColor = .white
        
//        self.navigationController?.navigationBar.backgroundColor = .white
    }
    
    @objc func showNewTargetPage(_ sender: UIBarButtonItem) {
        let vc = NewTargetViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func setUpSubviews() {
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension GoalViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return GoalViewController.goals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GoalTableViewCell.typeName, for: indexPath) as! GoalTableViewCell
        cell.config(name: GoalViewController.goals[indexPath.row].name, description: GoalViewController.goals[indexPath.row].description, deadline: GoalViewController.goals[indexPath.row].deadline)
        return cell
    }
    
    
}

extension NSObject {
    static var typeName: String {
        String(describing: self)
    }
}

struct Goal {
    let name: String
    let description: String
    let price: Double
    let reminder: Date
    let deadline: Date
}
