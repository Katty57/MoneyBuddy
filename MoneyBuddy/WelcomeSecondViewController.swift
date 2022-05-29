//
//  WelcomeSecondViewController.swift
//  MoneyBuddy
//
//  Created by  User on 29.05.2022.
//

import UIKit

class WelcomeSecondViewController: UIViewController {
        
        private lazy var welcomeLabel: UILabel = {
            let label = UILabel()
            label.text = """
                Я полезен тем, что научу тебя правильно распоряжаться финансами и зарабатывать своими достижениями
                """
            label.textColor = .black
            label.numberOfLines = 0
            label.textAlignment = .center
            label.font = UIFont.boldSystemFont(ofSize: 24)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        private lazy var nextButton: UIButton = {
            let button = UIButton()
            button.setTitle("Далее", for: .normal)
            button.backgroundColor = UIColor(red: 0.133, green: 0.396, blue: 0.024, alpha: 1)
            button.layer.cornerRadius = 25
            //button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.black.cgColor
            button.addTarget(self, action: #selector(showViewController(_:)), for: .touchUpInside)
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
    
    @objc func showViewController(_ sender: UIButton) {
        let vc = ViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
        
      //  private lazy var authorizathionLabel: UILabel = {
      //          let label = UILabel()
     //           label.text = "Пожалуйста, авторизуйтесь"
      //          label.textColor = .black
        //        label.numberOfLines = 0
          //      label.textAlignment = .center
            //    label.font = .systemFont(ofSize: 14.0)
              //  label.translatesAutoresizingMaskIntoConstraints = false
                //return label
           // }()
        
        override func viewDidLoad() {
                super.viewDidLoad()
                
                view.backgroundColor = .white
                setUpSubviews()
                // Do any additional setup after loading the view.
            }

        func setUpSubviews (){
                view.addSubview(welcomeLabel)
            view.addSubview(nextButton)
        //        view.addSubview(authorizathionLabel)
        //        view.addSubview(forgotPasswordButton)
            
            NSLayoutConstraint.activate([
                welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 278),
                welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
                welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
                //nextButton.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 73),
                nextButton.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 177),
                nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 98),
                nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -98),
                //nextButton.widthAnchor.constraint(equalToConstant: 180),
                nextButton.heightAnchor.constraint(equalToConstant: 50),
            ])
        }

}
