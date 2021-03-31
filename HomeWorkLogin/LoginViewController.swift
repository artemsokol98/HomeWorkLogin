//
//  ViewController.swift
//  HomeWorkLogin
//
//  Created by Артем Соколовский on 31.03.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    
    // MARK: IB - Outlets
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.autocorrectionType = .no
        passwordTextField.autocorrectionType = .no
        
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        
        userNameTextField.returnKeyType = UIReturnKeyType.next
        passwordTextField.returnKeyType = UIReturnKeyType.done
        
        userNameTextField.enablesReturnKeyAutomatically = true
        passwordTextField.enablesReturnKeyAutomatically = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else {
            return
        }
        greetingVC.userName = userNameTextField.text
    }
    
    // MARK: - IB Actions
    @IBAction func unwind(_ seg: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(with: "User Name", and: "user")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(with: "Password", and: "password")
    }
    
    @IBAction func logInButton() {
        if userNameTextField.text != "user" || passwordTextField.text != "password" {
            showAlert(with: "Error!", and: "Wrong Log In")
        }
    }
    
    // MARK: - Public Methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        }
        if textField == passwordTextField {
            passwordTextField.resignFirstResponder()
            logInButton()
            performSegue(withIdentifier: "successLogin", sender: self)
        }
        return true
     }
    
    // MARK: - Private Methods
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

