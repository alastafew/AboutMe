//
//  BioViewController.swift
//  AboutMe
//
//  Created by Ast on 12.02.2025.
//

import UIKit

final class BioViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet private var bioLabel: UILabel!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
        bioLabel.text = admin.bioText
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
