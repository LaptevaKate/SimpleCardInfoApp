//
//  ViewController.swift
//  SimpleCardInfoApp
//
//  Created by Екатерина Лаптева on 27.12.23.
//

import UIKit

final class MainViewController: UIViewController {
    
    //MARK: - Properties
    private let textLabel: UILabel = {
        let textLabel = UILabel()
        textLabel.text  = "Let's take some Info about Swift \n and Developers"
        textLabel.textColor = .systemPurple
        textLabel.numberOfLines = 2
        textLabel.textAlignment = .center
        
        let fontTextLabel = UIFont(name: "Helvetica-Oblique", size: 25)
        textLabel.font = fontTextLabel
        return textLabel
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "AppleCardPic")
        return imageView
    }()
    
    private let nextScreenButton: UIButton = {
        let button = UIButton()
        button.setTitle(" Start ", for: .normal)
        button.backgroundColor = .systemFill
        button.setTitleColor(.systemPurple, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        return button
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis  = NSLayoutConstraint.Axis.vertical
        stackView.distribution = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing = 10.0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    //MARK: - private methods
    private func setUpStackView() {
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(nextScreenButton)
        self.view.addSubview(stackView)
    }
    
    private func constraintsSetupForStackView() {
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
    
    private func setupUI() {
        setUpStackView()
        constraintsSetupForStackView()
    }
    
    
    
}

