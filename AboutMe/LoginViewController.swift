//
//  ViewController.swift
//  46-2-4
//
//  Created by Ast on 08.02.2025.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet private var loginTextField: UITextField!
    @IBOutlet private var passTextField: UITextField!
    
    @IBOutlet private var foggotUsernameButton: UIButton!
    @IBOutlet private var foggotPasswordButton: UIButton!
    @IBOutlet private var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.becomeFirstResponder()

    }
    
//    override func touchesBegan(_ touches: Set, with event: UITouch) {
//        super .touchesBegan(touches, with: event)
//    }
    
    // MARK: - IB Actions
    @IBAction func loginButtonPress() {
        
        let loginText = "1"
        let passText = "1"
        let userLogin = loginTextField.text ?? ""
        let userPass = passTextField.text ?? ""
        
        if userLogin == loginText && userPass == passText {
            showAlert(
                withTitle: "Correct! Welcome👋",
                andMessage: "Well done👍"
            )
        } else if !userLogin.isEmpty && !userPass.isEmpty {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
        } else {
            showAlert(
                withTitle: "Login or password is empty",
                andMessage: "Please enter login and password"
            )
        }
    }
    
    @IBAction private func foggotUsernameAlert(_ sender: UIButton) {
        showAlert(
            withTitle: "Oops!🥱",
            andMessage: "Username is 1"
        )
    }
    
    @IBAction private func foggotPassword(_ sender: UIButton) {
        showAlert(
            withTitle: "Oops!😎",
            andMessage: "Password is 1"
        )
    }
}

// MARK: - Alert Controller
private extension LoginViewController {
    func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(
            title: "OK",
            style: .default
        ) { _ in
            self.passTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
