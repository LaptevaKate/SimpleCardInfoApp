//
//  DistributedViewController.swift
//  SimpleCardInfoApp
//
//  Created by Екатерина Лаптева on 3.01.24.
//

import UIKit

final class DistributedViewController: UIViewController {
    
    // MARK: - @IBOutlets
    @IBOutlet weak var swiftLabel: UILabel!
    @IBOutlet weak var developerLabel: UILabel!
    @IBOutlet weak var swiftButton: UIButton!
    @IBOutlet weak var developerButton: UIButton!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpMainView()
        setUpLabels()
        setUpButtons()
    }
    
    // MARK: - private methods
    
    private func setUpLabels() {
        swiftLabel.attributedText = NSAttributedString(string: "Card Info About Swift")
        swiftLabel.font = UIFont(name: "Helvetica-Oblique", size: 25)
        swiftLabel.textAlignment = .center
        swiftLabel.textColor = .white
        
        developerLabel.attributedText = NSAttributedString(string: "Card Info About Developer")
        developerLabel.font = UIFont(name: "Helvetica-Oblique", size: 25)
        developerLabel.textAlignment = .center
        developerLabel.textColor = .white
        
    }
    
    private func setUpButtons() {
        swiftButton.setTitle("Move To Detail Swift Screen", for: .normal)
        swiftButton.setTitleColor(.black, for:
                .normal)
        developerButton.setTitle("Move To Detail Dev Screen", for: .normal)
        developerButton.setTitleColor(.black, for:
                .normal)
    }
    
    private func setUpMainView() {
        view.backgroundColor = .systemPurple
    }
    
    // MARK: - @IBActions
    @IBAction func swiftButtonPressed(_ sender: UIButton) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "SwiftInfoVC") as! SwiftInfoViewController
        self.present(nextVC, animated: true, completion: nil)
    }
    
    
    @IBAction func developerButtonPressed(_ sender: UIButton) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "DeveloperInfoVC") as! DeveloperInfoViewController
        self.present(nextVC, animated: true, completion: nil)
    }
}
