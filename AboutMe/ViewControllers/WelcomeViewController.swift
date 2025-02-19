//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Ast on 09.02.2025.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet private var welcomeUserLabel: UILabel!
    @IBOutlet private var backgroundView: UIView!
    @IBOutlet private var nameLabel: UILabel!
    
    // MARK: - Public Proprties
    var user: String!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradientBackground()
        welcomeUserLabel.text = "Welcome, \(user ?? Person.admin.login)!"
        nameLabel.text = "My name is \(Person.admin.firstName) \(Person.admin.lastName)"
    }
    
    // MARK: - IB Actions
    @IBAction private func logOutButtonAction() {
       dismiss(animated: true)
    }
}
