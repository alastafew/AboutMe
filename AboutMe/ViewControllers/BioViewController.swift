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
        view.setGradientBackground()
        bioLabel.text = Person.admin.bioText
    }
}
