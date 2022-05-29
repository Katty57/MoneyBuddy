//
//  NewTargetViewController.swift
//  MoneyBuddy
//
//  Created by  User on 29.05.2022.
//

import UIKit

class NewTargetViewController: UIViewController {
    
//    let name: String
//    let description: String
//    let price: Double
//    let reminder: Date
//    let deadline: Date
    
    private lazy var nameTextField: UIView = {
        let view = GoalView()
        view.customInit(title: "Название цели", placeholder: "Airpods")
        return view
    }()
    
    private lazy var descriptionTextField: UIView = {
        let view = GoalView()
        view.customInit(title: "Описание цели", placeholder: "Накопить на эирподсы")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var priceTextField: UIView = {
        let view = GoalView()
        view.customInit(title: "Общая сумма", placeholder: "40.000")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var reminderTextField: UIView = {
        let view = GoalView()
        view.customInit(title: "Напоминание", placeholder: "Каждый день")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var deadlineTextField: UIView = {
        let view = GoalView()
        view.customInit(title: "Срок", placeholder: "12 месяцев")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var submitButton: UIButton = {
        let button = UIButton()
        button.customButton(with: "Добавить цель")
        button.addTarget(self, action: #selector(addNewTarget(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 0.88, green: 0.91, blue: 0.93, alpha: 1.0)
//        self.navigationController?.navigationBar.backgroundColor = .white
        self.tabBarController?.tabBar.backgroundColor = .white
        
        let label = UILabel()
        label.text = "Новая цель"
        label.font = .systemFont(ofSize: 24)
        self.navigationItem.titleView = label
        
        setUpSubviews()
        // Do any additional setup after loading the view.
    }
    
    @objc func addNewTarget(_ sender: UIButton) {
        guard let nameTextField = nameTextField as? GoalView, let descriptionTextField = descriptionTextField as? GoalView, let priceTextField = priceTextField as? GoalView, let reminderTextField = reminderTextField as? GoalView, let deadlineTextField = deadlineTextField as? GoalView else {return}

        guard let nameText = nameTextField.goalTextField.text, let descriptionText = descriptionTextField.goalTextField.text, let priceText = priceTextField.goalTextField.text, let reminderText = reminderTextField.goalTextField.text, let deadlineText = deadlineTextField.goalTextField.text else {return}
        
        let goal = Goal(name: nameText, description: descriptionText, price: Double(priceText) ?? 0.0, reminder: Date(), deadline: Date())
        GoalViewController.goals.append(goal)
        
        self.navigationController?.popViewController(animated: false)
    }
    
    func setUpSubviews() {
        view.addSubview(nameTextField)
        view.addSubview(descriptionTextField)
        view.addSubview(priceTextField)
        view.addSubview(reminderTextField)
        view.addSubview(deadlineTextField)
        view.addSubview(submitButton)
        
        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 162),
            nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            nameTextField.heightAnchor.constraint(equalToConstant: 72),
            
            descriptionTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 16),
            descriptionTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            descriptionTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            descriptionTextField.heightAnchor.constraint(equalToConstant: 72),
            
            priceTextField.topAnchor.constraint(equalTo: descriptionTextField.bottomAnchor, constant: 16),
            priceTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            priceTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            priceTextField.heightAnchor.constraint(equalToConstant: 72),
            
            reminderTextField.topAnchor.constraint(equalTo: priceTextField.bottomAnchor, constant: 16),
            reminderTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            reminderTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            reminderTextField.heightAnchor.constraint(equalToConstant: 72),
            
            deadlineTextField.topAnchor.constraint(equalTo: reminderTextField.bottomAnchor, constant: 16),
            deadlineTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            deadlineTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            deadlineTextField.heightAnchor.constraint(equalToConstant: 72),
            
            submitButton.topAnchor.constraint(equalTo: deadlineTextField.bottomAnchor, constant: 32),
            submitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            submitButton.heightAnchor.constraint(equalToConstant: 50),
            submitButton.widthAnchor.constraint(equalToConstant: 198)
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

class GoalView: UIView, UITextFieldDelegate {
    var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var goalTextField: UITextField = {
        let textField = UITextField()
        textField.font = .systemFont(ofSize: 16)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    func customInit(title: String, placeholder: String) {
        
        self.addSubview(titleLabel)
        self.addSubview(goalTextField)
        goalTextField.delegate = self
        
        titleLabel.text = title
        goalTextField.placeholder = placeholder
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            
            goalTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 3),
            goalTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16)
        ])
        
        self.layer.cornerRadius = 12
        self.clipsToBounds = true
        self.backgroundColor = .white
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        goalTextField.resignFirstResponder()
        return true
    }
}
