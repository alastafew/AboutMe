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
    
    // MARK: - Public Proprties
    var userName: String!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUserLabel.text = "Welcome, \(userName ?? "1")!"
        setGradientBackground()
    }
    
    // MARK: - IB Actions
    @IBAction private func logOutButtonAction() {
       dismiss(animated: true)
    }
    
    // MARK: - Private Methods
    private func setGradientBackground() {
        
        let colorTop =  UIColor(
            red: 210.0/255.0,
            green: 109.0/255.0,
            blue: 128.0/255.0,
            alpha: 1.0).cgColor
        
        let colorBottom = UIColor(
            red: 107.0/255.0,
            green: 148.0/255.0,
            blue: 230.0/255.0,
            alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = view.bounds
        
        view.layer.insertSublayer(gradientLayer, at:0)
    }
}
