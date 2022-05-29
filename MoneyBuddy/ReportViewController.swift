//
//  ReportViewController.swift
//  MoneyBuddy
//
//  Created by  User on 29.05.2022.
//

import UIKit

class ReportViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        let label = UILabel()
        label.text = "Отчет"
        label.font = .systemFont(ofSize: 24)
        self.navigationItem.titleView = label
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        view.backgroundColor = UIColor(red: 0.88, green: 0.91, blue: 0.93, alpha: 1.0)
        self.tabBarController?.tabBar.backgroundColor = .white
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
