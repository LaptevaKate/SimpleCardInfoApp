//
//  DeveloperInfoViewController.swift
//  SimpleCardInfoApp
//
//  Created by Екатерина Лаптева on 28.12.23.
//

import UIKit

final class DeveloperInfoViewController: UIViewController {
    
    //MARK: - Properties
    private let informationArray = [
        "Developers have in-depth knowledge of how iOS works on different Apple devices, like the iPad, Apple Watch, and iPhone.",
        "IOS developers build, test, and fine-tune applications to suit the needs of their clients.",
        "Gaming applications are the most popular category in the Apple app store - iOS developers specializing in game development may be employed by companies like EA or Ubisoft, work independently, or partner with other creatives for a specific gaming project.",
        "Creating a to-do-list-style productivity app is an excellent exercise for a novice iOS developer. ",
        "Business applications are the second most popular category in the Apple app store. Most businesses rely on applications to handle things like inventory management, billing, or customer relationship management. iOS developers may be employed by companies like Amazon or Etsy to work on applications that support essential business functions."
    ]
    
    //MARK: - @IBOutlets
    @IBOutlet weak var developerTitleLabel: UILabel!
    @IBOutlet weak var developerInfoLabel: UILabel!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initTitleLabel(title: developerTitleLabel)
        initInformLabel()
        
    }
    
    //MARK: -  private Methods
    private func initTitleLabel(title: UILabel) {
        title.textAlignment = .center
        title.layer.cornerRadius = 5
        title.layer.masksToBounds = true
        title.attributedText = NSAttributedString(string: "IOS DEV ARE POWER")
        title.font = UIFont(name: "Helvetica-Oblique", size: 15)
    }
    
    private func initInformLabel() {
        developerInfoLabel.layer.cornerRadius = 50
        developerInfoLabel.layer.masksToBounds = true
        developerInfoLabel.font = UIFont(name: "Helvetica-Oblique", size: 15)
        developerInfoLabel.text = informationArray.joined(separator: " \n 🍏 \n")
    }
}
