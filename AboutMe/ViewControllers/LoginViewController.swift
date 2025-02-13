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
    
    // MARK: - Override Methods
    // Метод для скрытия клавиатуры тапом по экрану Set<UITouch> после завершения ввода текста view.endEditing(true)
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // Метод для проверки логина/пароля
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == admin.user, passwordTextField.text == admin.password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password") {
                    self.passwordTextField.text = ""
                }
            // Введенное имя,пароль не совпадает, отменяем переход и показываем алерт контроллер
            return false
        }
        // Введенное имя, пароль совпадает, разрешаем переход
        return true
    }
    // Переход по сигвэю при нажатии кнопки логин
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.userName = admin.user
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.text = admin.user
        passwordTextField.text = admin.password
    }
    
    // MARK: - IB Actions
    // Обозначаем кнопки тэгами и заводим их в общую функцию
    @IBAction private func forgotRegisterData(_ sender: UIButton) {
        showAlert(
            withTitle: "Oops!",
            andMessage: "Your name is \(sender.tag == 0 ? admin.user : admin.password)"
        )
    }
    
    // Стирание логина пароля при возврате по сигвэю
    @IBAction private func unwind(for segue: UIStoryboardSegue){
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
        
    // MARK: - Alert Controller
    private func showAlert(withTitle title: String, andMessage message: String, handler: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            handler?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
