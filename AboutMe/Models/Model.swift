//
//  Model.swift
//  AboutMe
//
//  Created by Ast on 12.02.2025.
//

import Foundation
import UIKit

struct Person {
    let user: String
    let password: String
    let firstName: String
    let lastName: String
    let jobTitle: String
    let companyName: String
    let bioText: String
}

let admin = Person(
    user: "1",
    password: "1",
    firstName: "Alexander",
    lastName: "Ast",
    jobTitle: "programmer",
    companyName: "Auvix",
    bioText: "I work for a AV-IT company. We provide technical support, product video solutions and also develop software for goverment in Russia. We don’t export anything. Our company employs about 300 people. Company’s head office is located in Moscow. But we have customers in all Russia regions. We are one of the largest AV-IT companies in Russia."
)

func setGradientBackground() {
    
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
    gradientLayer.frame = UIScreen.main.bounds
    
    //view.layer.insertSublayer(gradientLayer, at:0)
}
