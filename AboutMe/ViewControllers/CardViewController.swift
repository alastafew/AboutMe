//
//  CardViewController.swift
//  AboutMe
//
//  Created by Ast on 12.02.2025.
//

import UIKit

final class CardViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var adminFirstNameLabel: UILabel!
    @IBOutlet var adminLastNameLabel: UILabel!
    @IBOutlet var adminJobTitleLabel: UILabel!
    @IBOutlet var adminCompanyNameLabel: UILabel!
    @IBOutlet var adminPhotoView: UIImageView!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
        navigationItem.title = "\(adminFirstName) \(adminLastName)"
        adminFirstNameLabel.text = adminFirstName
        adminLastNameLabel.text = adminLastName
        adminJobTitleLabel.text = adminJobTitle
        adminCompanyNameLabel.text = adminCompanyName
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
