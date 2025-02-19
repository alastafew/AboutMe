//
//  Model.swift
//  AboutMe
//
//  Created by Ast on 12.02.2025.
//

import Foundation

struct Person {
    let login: String
    let password: String
    let photo: String
    let firstName: String
    let lastName: String
    let jobTitle: String
    let companyName: String
    let bioText: String
    
    static let admin = Person(
        login: "1",
        password: "1",
        photo: "Photo",
        firstName: "Alexander",
        lastName: "Ast",
        jobTitle: "programmer",
        companyName: "Auvix",
        bioText: "I work for a AV-IT company. We provide technical support, product video solutions and also develop software for goverment in Russia. We don’t export anything. Our company employs about 300 people. Company’s head office is located in Moscow. But we have customers in all Russia regions. We are one of the largest AV-IT companies in Russia."
    )
}

// MARK: - Set background color
import UIKit

extension UIView {
    func setGradientBackground() {
        let primaryColor = UIColor(
            red: 210/255,
            green: 109/255,
            blue: 128/255,
            alpha: 1
        )
        
        let secondaryColor = UIColor(
            red: 107/255,
            green: 148/255,
            blue: 230/255,
            alpha: 1
        )
        
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [primaryColor.cgColor, secondaryColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
