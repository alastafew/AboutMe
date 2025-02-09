//
//  ViewController.swift
//  46-2-4
//
//  Created by Ast on 08.02.2025.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet private var userNameTextField: UITextField!
    @IBOutlet private var passwordTextField: UITextField!
    
    @IBOutlet private var foggotUsernameButton: UIButton!
    @IBOutlet private var foggotPasswordButton: UIButton!
    @IBOutlet private var loginButton: UIButton!
    
    // MARK: - Propeties
    let loginText = "1"
    let passText = "1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.becomeFirstResponder()

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.userName = loginText
        
    }
    
    /*
    override func touchesBegan(touches: Set<UITouch>, with event: UITouch) {
        super .touchesBegan(touches, with: event)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            // Введенное имя не валидно, отменяем переход и показываем алерт контроллер
            return false
        }
       
        // Введенное имя валидно, разрешаем переход
        return true
    }
     */
    
    // MARK: - IB Actions
    @IBAction private func loginButtonPress() {
        
        let userLogin = userNameTextField.text ?? ""
        let userPass = passwordTextField.text ?? ""
        
        if userLogin == loginText && userPass == passText {
            print("Correct login!")
        } else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
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
    
    @IBAction func unwind(for segue: UIStoryboardSegue){
        _ = segue.source as? WelcomeViewController
        userNameTextField.text = ""
        passwordTextField.text = ""
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
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
