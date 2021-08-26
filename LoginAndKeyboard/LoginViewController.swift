//
//  ViewController.swift
//  LoginAndKeyboard
//
//  Created by Aiza on 25.08.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if passwordTextField.text == "0000",
           userNameTextField.text == "Alex" {
            guard let loginVC = segue.destination as? WelcomeViewController else {return}
            loginVC.welcomValue = userNameTextField.text
        } else {
            showAlert(with: "Invilid username or password", and: "Please enter a correct username and password")
        }
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(with: "Oops!", and: "Your name is Alex")
    }
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Oops!", and: "Your password is 0000")
    }

    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? WelcomeViewController else {return}
        userNameTextField.text = ""
        passwordTextField.text = ""
        
        }
    }


// MARK: - Private Methods
extension LoginViewController {
    private func showAlert(with title: String, and messege: String) {
        let alert = UIAlertController(title: title, message: messege, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
