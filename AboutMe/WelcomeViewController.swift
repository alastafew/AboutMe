//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Ast on 09.02.2025.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeUserLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUserLabel.text = "Welcome, \(userName ?? "1")!"

    }
    
    @IBAction func logOutButtonAction() {
       dismiss(animated: true)
    }
}
