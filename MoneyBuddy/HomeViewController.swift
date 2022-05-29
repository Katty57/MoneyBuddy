//
//  HomeViewController.swift
//  MoneyBuddy
//
//  Created by  User on 28.05.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var totalMoneyView: UIView = {
        let view = createView(title: "Остаток на счете:", content: "20.000 KZT")
        return view
    }()
    
    private lazy var dailyMoneyView: UIView = {
        let view = createView(title: "Сколько можно потратить на сегодня:", content: "4.000 KZT")
        return view
    }()
    
    private lazy var bonusView: UIView = {
        let view = createView(title: "Доступно бонусов:", content: "157 бонусов")
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 0.88, green: 0.91, blue: 0.93, alpha: 1.0)
        let label = UILabel()
        label.text = "Money Buddy"
        label.font = .systemFont(ofSize: 24)
        self.navigationItem.titleView = label
        
        let item = UIBarButtonItem()
        item.image = UIImage(named: "calendar")
        self.navigationItem.rightBarButtonItem = item
        
        setUpSubviews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        self.tabBarController?.tabBar.backgroundColor = .white
    }
    
    private func createView(title: String, content: String) -> UIView {
        let view = UIView()
        
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.numberOfLines = 0
        titleLabel.font = .systemFont(ofSize: 20)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let digitLabel = UILabel()
        digitLabel.text = content
        digitLabel.numberOfLines = 0
        digitLabel.font = .systemFont(ofSize: 24)
        digitLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(titleLabel)
        view.addSubview(digitLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            digitLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2),
            digitLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            digitLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 12
        view.clipsToBounds = true
        return view
    }
    
    private func setUpSubviews() {
        view.addSubview(totalMoneyView)
        view.addSubview(dailyMoneyView)
        view.addSubview(bonusView)
        
        NSLayoutConstraint.activate([
            totalMoneyView.topAnchor.constraint(equalTo: view.topAnchor, constant: 136),
            totalMoneyView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            totalMoneyView.widthAnchor.constraint(equalToConstant: 347),
            totalMoneyView.heightAnchor.constraint(equalToConstant: 120),
            
            dailyMoneyView.topAnchor.constraint(equalTo: totalMoneyView.bottomAnchor, constant: 33),
            dailyMoneyView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dailyMoneyView.widthAnchor.constraint(equalToConstant: 347),
            dailyMoneyView.heightAnchor.constraint(equalToConstant: 120),

            bonusView.topAnchor.constraint(equalTo: dailyMoneyView.bottomAnchor, constant: 33),
            bonusView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bonusView.widthAnchor.constraint(equalToConstant: 347),
            bonusView.heightAnchor.constraint(equalToConstant: 120)
        ])
    }
}


