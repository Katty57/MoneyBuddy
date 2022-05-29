//
//  SingedInViewController.swift
//  MoneyBuddy
//
//  Created by  User on 29.05.2022.
//

import UIKit

class SingedInViewController: UIViewController {

    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Вы успешно зарегестрировались!"
        label.textColor = .black
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var nextButton: UIButton = {
        let button = UIButton()
        button.setTitle("Приступим!", for: .normal)
        button.backgroundColor = UIColor(red: 0.133, green: 0.396, blue: 0.024, alpha: 1)
        button.layer.cornerRadius = 25
        //button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        button.customButton(with: "Зарегистрироваться")
        button.addTarget(self, action: #selector(showHomePage), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func showHomePage(_ sender: UIButton) {
        let tabBar = CustomTabBArView()
        tabBar.modalPresentationStyle = .fullScreen
        self.present(tabBar, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            view.backgroundColor = .white
            setUpSubviews()
            // Do any additional setup after loading the view.
        }

    func setUpSubviews (){
         view.addSubview(welcomeLabel)
         view.addSubview(nextButton)
        
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
