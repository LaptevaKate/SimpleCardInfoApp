//
//  SwiftInfoViewController.swift
//  SimpleCardInfoApp
//
//  Created by Екатерина Лаптева on 28.12.23.
//

import UIKit

final class SwiftInfoViewController: UIViewController {
    
    private let informationArray = [
        "Swift is safe. Undefined behavior is the enemy of safety, and it’s best to catch mistakes before software goes into production.",
        "Swift is general-purpose and modern. Suitable for everything from systems programming, through mobile and desktop apps, to cloud services.",
        "Swift is approachable and powerful. From a single-line “Hello, World!” to large-scale apps with hundreds of thousands of lines. Swift scales with your needs.",
        "Swift is fast to run and quick to write. It comes with predictable and consistent performance that is on-par with C-based languages without sacrificing developer friendliness.",
        "Swift includes features that make code easier to read and write, while giving the developer the control needed in a true systems programming language.",
        "Swift supports inferred types to make code cleaner and less prone to mistakes, and modules eliminate headers and provide namespaces.",
        "Memory is managed automatically, and you don’t even need to type semi-colons.",
        "Swift also borrows from other languages, for instance named parameters brought forward from Objective-C are expressed in a clean syntax that makes APIs in Swift easy to read and maintain."
    ]
    
    // MARK: - @IBOutlet
    @IBOutlet weak var swiftTitleLabel: UILabel!
    @IBOutlet weak var swiftInformLabel: UILabel!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initTitleLabel(title: swiftTitleLabel)
        initInformLabel()
        labelTapped()
    }
    
    
    //MARK: -  private Methods
   private func initTitleLabel(title: UILabel) {
        title.textAlignment = .center
        title.layer.cornerRadius = 5
        title.layer.masksToBounds = true
        let shadow = NSShadow()
        shadow.shadowBlurRadius = 5
        shadow.shadowColor = UIColor.darkGray
        shadow.shadowOffset = .init(width: 2, height: 5)
        
        let myAttribute = [
            NSAttributedString.Key.font: UIFont(name: "Helvetica-Oblique", size: 15.0)!,
            NSAttributedString.Key.shadow: shadow
        ]
        
        let myString = NSMutableAttributedString(string: "DO YOU KNOW SWIFT", attributes: myAttribute)
        let myRange = NSRange(location: 12, length: 5)
        myString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: myRange)
    
        title.attributedText = myString
    }

    
    private func initInformLabel() {
        swiftInformLabel.layer.cornerRadius = 50
        swiftInformLabel.layer.masksToBounds = true
        swiftInformLabel.font = UIFont(name: "Helvetica-Oblique", size: 16)
        let myAttribute = [ NSAttributedString.Key.foregroundColor: UIColor.darkText ]
        let myAttrString = NSAttributedString(string: "TAP LABEL\n to see the details", attributes: myAttribute)
        swiftInformLabel.attributedText = myAttrString
  
    }
    
    private func labelTapped() {
        let randomIndex = Int(arc4random_uniform(UInt32(informationArray.count)))
        let randomItem = informationArray[randomIndex]
        
        swiftInformLabel.text = randomItem
        swiftInformLabel.isUserInteractionEnabled = true
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tapGeasture))
        swiftInformLabel.addGestureRecognizer(tapGesture)
    }
    
    
    @objc func tapGeasture() {
        let randomIndex = Int(arc4random_uniform(UInt32(informationArray.count)))
        let randomItem = informationArray[randomIndex]
        
        swiftInformLabel.text = randomItem
    }
}
