//
//  RegistrationViewController.swift
//  MoneyBuddy
//
//  Created by  User on 28.05.2022.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Регистрация"
        label.font = .systemFont(ofSize: 24)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var firstNameTextField: UITextField = {
        let textField = UITextField()
        textField.customTextField(placeholder: "Имя", icon: nil)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var lastNameTextField: UITextField = {
        let textField = UITextField()
        textField.customTextField(placeholder: "Фамилия", icon: nil)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.customTextField(placeholder: "E-mail", icon: "mail")
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.customTextField(placeholder: "Пароль", icon: "lock")
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var passwordRepeatTextField: UITextField = {
        let textField = UITextField()
        textField.customTextField(placeholder: "Подтвердите пароль", icon: "lock")
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var authorizeButton: UIButton = {
        let button = UIButton()
        button.customButton(with: "Зарегистрироваться")
        button.addTarget(self, action: #selector(showHomePage), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        setUpSubviews()
        // Do any additional setup after loading the view.
    }
    
    @objc func showHomePage(_ sender: UIButton) {
        let tabBar = SingedInViewController()
        tabBar.modalPresentationStyle = .fullScreen
        self.present(tabBar, animated: true, completion: nil)
    }
    
    func setUpSubviews() {
        view.addSubview(titleLabel)
        view.addSubview(firstNameTextField)
        view.addSubview(lastNameTextField)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(passwordRepeatTextField)
        view.addSubview(authorizeButton)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 149),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 34),
            
            firstNameTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 46),
            firstNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            firstNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            firstNameTextField.heightAnchor.constraint(equalToConstant: 50),
            
            lastNameTextField.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 30),
            lastNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            lastNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            lastNameTextField.heightAnchor.constraint(equalToConstant: 50),
            
            emailTextField.topAnchor.constraint(equalTo: lastNameTextField.bottomAnchor, constant: 30),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 30),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordRepeatTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
            passwordRepeatTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordRepeatTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            passwordRepeatTextField.heightAnchor.constraint(equalToConstant: 50),
            
            authorizeButton.topAnchor.constraint(equalTo: passwordRepeatTextField.bottomAnchor, constant: 45),
            authorizeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 88),
            authorizeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -88),
            authorizeButton.heightAnchor.constraint(equalToConstant: 50)
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
