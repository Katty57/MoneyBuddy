//
//  ShopViewController.swift
//  MoneyBuddy
//
//  Created by  User on 29.05.2022.
//

import UIKit

class ShopViewController: UIViewController {
    
    private lazy var firstShopView: UIView = {
        let view = createView(title: "Marvin / Меломан", image: "marwin")
        return view
    }()
    
    private lazy var secondShopView: UIView = {
        let view = createView(title: "Детский мир", image: "detshii_mir")
        return view
    }()
    
    private lazy var thirdShopView: UIView = {
        let view = createView(title: "Abdi", image: "abdi")
        return view
    }()
    
    private lazy var forthShopView: UIView = {
        let view = createView(title: "Enjoy Shop", image: "enjoy")
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setUpView()
        setUpSubviews()
    }

    func setUpView() {
        view.backgroundColor = UIColor(red: 0.88, green: 0.91, blue: 0.93, alpha: 1.0)
        let label = UILabel()
        label.text = "Магазины"
        label.font = .systemFont(ofSize: 24)
        self.navigationItem.titleView = label
    }
    
    private func createView(title: String, image: String) -> UIView {
        let view = UIView()
        
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.numberOfLines = 0
        titleLabel.font = .systemFont(ofSize: 20)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        let arrowView = UIImageView()
        arrowView.image = UIImage(named: "right-arrow")
        arrowView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(titleLabel)
        view.addSubview(imageView)
        view.addSubview(arrowView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 35),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 49),
            imageView.widthAnchor.constraint(equalToConstant: 178),
            
            titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 14),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            arrowView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -17),
            arrowView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            arrowView.heightAnchor.constraint(equalToConstant: 30),
            arrowView.widthAnchor.constraint(equalToConstant: 30),
            
        ])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 12
        view.clipsToBounds = true
        return view
    }
    
    func setUpSubviews() {
        view.addSubview(firstShopView)
        view.addSubview(secondShopView)
        view.addSubview(thirdShopView)
        view.addSubview(forthShopView)
        
        NSLayoutConstraint.activate([
            firstShopView.topAnchor.constraint(equalTo: view.topAnchor, constant: 127),
            firstShopView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstShopView.widthAnchor.constraint(equalToConstant: 378),
            firstShopView.heightAnchor.constraint(equalToConstant: 137),
            
            secondShopView.topAnchor.constraint(equalTo: firstShopView.bottomAnchor, constant: 23),
            secondShopView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            secondShopView.widthAnchor.constraint(equalToConstant: 378),
            secondShopView.heightAnchor.constraint(equalToConstant: 137),
            
            thirdShopView.topAnchor.constraint(equalTo: secondShopView.bottomAnchor, constant: 23),
            thirdShopView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            thirdShopView.widthAnchor.constraint(equalToConstant: 378),
            thirdShopView.heightAnchor.constraint(equalToConstant: 137),
            
            forthShopView.topAnchor.constraint(equalTo: thirdShopView.bottomAnchor, constant: 23),
            forthShopView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            forthShopView.widthAnchor.constraint(equalToConstant: 378),
            forthShopView.heightAnchor.constraint(equalToConstant: 137),
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
