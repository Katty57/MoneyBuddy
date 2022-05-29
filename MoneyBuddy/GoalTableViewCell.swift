//
//  GoalTableViewCell.swift
//  MoneyBuddy
//
//  Created by  User on 28.05.2022.
//

import UIKit

class GoalTableViewCell: UITableViewCell {
    private lazy var cellView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 12
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var goalImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "goal")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var titleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Airpods"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16)
        label.textColor = .black
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Накопить на эирподсы"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12)
        label.textColor = UIColor(red: 0.42, green: 0.46, blue: 0.49, alpha: 1.0)
        return label
    }()
    
    private lazy var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var timeImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "clock")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var timeLabel: UILabel = {
        let label = UILabel()
        label.text = "Срок"
        label.font = .systemFont(ofSize: 12)
        label.textColor = UIColor(red: 0.42, green: 0.46, blue: 0.49, alpha: 1.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var deadlineLabel: UILabel = {
        let label = UILabel()
        label.text = "1 января 2023"
        label.font = .systemFont(ofSize: 12)
        label.textColor = UIColor(red: 0.42, green: 0.46, blue: 0.49, alpha: 1.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var timeView: UIView = {
        let view = UIView()
        view.addSubview(timeImage)
        view.addSubview(timeLabel)
        view.addSubview(deadlineLabel)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var line: UIBezierPath = {
        let path = UIBezierPath()
        let widthHalf = lineView.frame.width / 2
        let heightHalf = lineView.frame.height / 2
        path.move(to: CGPoint(x: lineView.center.x - widthHalf, y: lineView.center.y))
        path.addLine(to: CGPoint(x: lineView.center.x + widthHalf, y: lineView.center.y))
        path.close()
//        let shapeLayer = CAShapeLayer()
//        shapeLayer.path = path.cgPath
//        shapeLayer.strokeColor = UIColor.blue.cgColor
//        shapeLayer.fillColor = UIColor.clear.cgColor
//        shapeLayer.lineWidth = 3
//        lineView.layer.addSublayer(shapeLayer)
        return path
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func config (name: String, description: String, deadline: Date) {
        nameLabel.text = name
        descriptionLabel.text = description
        deadlineLabel.text = "\(deadline)"
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = UIColor(red: 0.88, green: 0.91, blue: 0.93, alpha: 1.0)
        setUpSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpSubviews() {
        contentView.addSubview(cellView)
        cellView.addSubview(goalImageView)
        cellView.addSubview(titleView)
        cellView.addSubview(timeView)
        titleView.addSubview(nameLabel)
        titleView.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            cellView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            cellView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            cellView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            cellView.heightAnchor.constraint(equalToConstant: 106),
            
            goalImageView.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 23),
            goalImageView.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 23),
            goalImageView.widthAnchor.constraint(equalToConstant: 30),
            goalImageView.heightAnchor.constraint(equalToConstant: 30),
            
            titleView.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 23),
            titleView.leadingAnchor.constraint(equalTo: goalImageView.trailingAnchor, constant: 19),
            
            nameLabel.topAnchor.constraint(equalTo: titleView.topAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: titleView.trailingAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            timeView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 21),
            timeView.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 26),
            
            timeImage.topAnchor.constraint(equalTo: timeView.topAnchor),
            timeImage.leadingAnchor.constraint(equalTo: timeView.leadingAnchor),
            
            timeLabel.topAnchor.constraint(equalTo: timeView.topAnchor),
            timeLabel.leadingAnchor.constraint(equalTo: timeImage.trailingAnchor, constant: 22),

            deadlineLabel.topAnchor.constraint(equalTo: timeView.topAnchor),
            deadlineLabel.leadingAnchor.constraint(equalTo: timeLabel.trailingAnchor, constant: 22)

        ])
    }

}
