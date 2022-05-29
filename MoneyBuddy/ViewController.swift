//
//  ViewController.swift
//  MoneyBuddy
//
//  Created by  User on 27.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var iconImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "turtle")
        image.contentMode = .scaleToFill
        return image
    }()
    
    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Добро пожаловать в Money Buddy!"
        label.textColor = .black
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 24.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var authorizathionLabel: UILabel = {
        let label = UILabel()
        label.text = "Пожалуйста, авторизуйтесь"
        label.textColor = .black
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 14.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
    
    private lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(.lightGray, for: .normal)
        button.setTitle("Забыли пароль?", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var logInButton: UIButton = {
        let button = UIButton()
        button.customButton(with: "Войти")
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(showHomePage(_:)), for: .touchUpInside)
        return button
    }()
    
    private lazy var noAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Нет аккаунта?"
        label.textColor = .lightGray
        label.font = .systemFont(ofSize: 14)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var registerButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(UIColor(red: 0.13, green: 0.4, blue: 0.02, alpha: 1.0), for: .normal)
        button.setTitle("Зарегистрироваться", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14)
        button.titleLabel?.textAlignment = .center
        button.addTarget(self, action: #selector(showRegisterPage(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setUpSubviews()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.backgroundColor = .white
    }
    
    @objc func showHomePage(_ sender: UIButton) {
        let tabBar = CustomTabBArView()
        tabBar.modalPresentationStyle = .fullScreen
        self.present(tabBar, animated: true, completion: nil)
    }
    
    @objc func showRegisterPage(_ sender: UIButton) {
        let registerVC = RegistrationViewController()
        registerVC.modalPresentationStyle = .fullScreen
        self.present(registerVC, animated: true, completion: nil)
    }

    func setUpSubviews (){
        view.addSubview(iconImageView)
        view.addSubview(welcomeLabel)
        view.addSubview(authorizathionLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(forgotPasswordButton)
        view.addSubview(logInButton)
        view.addSubview(noAccountLabel)
        view.addSubview(registerButton)
        
        NSLayoutConstraint.activate([
            iconImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 114),
            iconImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iconImageView.widthAnchor.constraint(equalToConstant: 148),
            iconImageView.heightAnchor.constraint(equalToConstant: 129),
            
            welcomeLabel.topAnchor.constraint(equalTo: iconImageView.bottomAnchor, constant: 30),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            
            authorizathionLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 24),
            authorizathionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            authorizathionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            emailTextField.topAnchor.constraint(equalTo: authorizathionLabel.bottomAnchor, constant: 27),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 27),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            logInButton.topAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor, constant: 27),
            logInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 98),
            logInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -98),
            logInButton.heightAnchor.constraint(equalToConstant: 50),
            
            noAccountLabel.topAnchor.constraint(equalTo: logInButton.bottomAnchor, constant: 30),
            noAccountLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 34),
            noAccountLabel.widthAnchor.constraint(equalToConstant: 142),
            
            registerButton.topAnchor.constraint(equalTo: noAccountLabel.topAnchor),
            registerButton.leadingAnchor.constraint(equalTo: noAccountLabel.trailingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 26),
            registerButton.heightAnchor.constraint(equalToConstant: 15)
        ])
    }

}

extension UITextField {
    func customTextField (placeholder: String, icon: String?) {
        self.borderStyle = .roundedRect
        self.layer.borderColor = UIColor(red: 0.13, green: 0.4, blue: 0.02, alpha: 1.0).cgColor
        self.layer.borderWidth = 1.0
        self.placeholder = placeholder
        self.textColor = .lightGray
        self.layer.cornerRadius = 25
        self.clipsToBounds = true
            
        let imageView = UIImageView(frame: CGRect(x: 30, y: 0, width: 20.0, height: 20.0))
        if let icon = icon {
            let image = UIImage(named: icon)
            imageView.image = image
            imageView.contentMode = .scaleAspectFit
        }

        let view = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 20))
            view.addSubview(imageView)
        self.leftViewMode = UITextField.ViewMode.always
        self.leftView = view
    }
}

extension UIButton {
    func customButton(with title: String) {
        self.setTitle(title, for: .normal)
        self.setTitleColor(.white, for: .normal)
        self.backgroundColor = UIColor(red: 0.13, green: 0.4, blue: 0.02, alpha: 1.0)
        self.layer.cornerRadius = 25
        self.clipsToBounds = true
        
    }
}
