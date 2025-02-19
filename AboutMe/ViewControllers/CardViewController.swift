//
//  CardViewController.swift
//  AboutMe
//
//  Created by Ast on 12.02.2025.
//

import UIKit

final class CardViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet private var adminFirstNameLabel: UILabel!
    @IBOutlet private var adminLastNameLabel: UILabel!
    @IBOutlet private var adminJobTitleLabel: UILabel!
    @IBOutlet private var adminCompanyNameLabel: UILabel!
    @IBOutlet private var adminPhotoView: UIImageView! {
        didSet {
            adminPhotoView.layer.cornerRadius = adminPhotoView.frame.height / 2
        }
    }
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradientBackground()
        navigationItem.title = "\(Person.admin.firstName) \(Person.admin.lastName)"
        adminFirstNameLabel.text = Person.admin.firstName
        adminLastNameLabel.text = Person.admin.lastName
        adminJobTitleLabel.text = Person.admin.jobTitle
        adminCompanyNameLabel.text = Person.admin.companyName
        adminPhotoView.image = UIImage(named: Person.admin.photo)
    }
}
