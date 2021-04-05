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
    
    let username = Login.getLogin().userName
    let password = Login.getLogin().password
    
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
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let tabBarController = segue.destination as! UITabBarController

        for viewController in tabBarController.viewControllers! {
            
         if let greetingVC = viewController as? GreetingViewController {
            greetingVC.userName = GeneralInfo.getGeneralInfo().name
            greetingVC.homeImage = GeneralInfo.getGeneralInfo().image
            greetingVC.age = GeneralInfo.getGeneralInfo().age
         }
         
         else if let navigationVC = viewController as? UINavigationController {
            print(navigationVC.viewControllers)
            let educationVC = navigationVC.topViewController as! EducationViewController
                    educationVC.school = GeneralInfo.getGeneralInfo().education.school
                    educationVC.university = GeneralInfo.getGeneralInfo().education.university.universityName
                    educationVC.department = GeneralInfo.getGeneralInfo().education.university.departmentName
                    educationVC.direction = GeneralInfo.getGeneralInfo().education.university.directionOfStudy
                    print(GeneralInfo.getGeneralInfo().education.school)
                }
            }
    }
    
    // MARK: - IB Actions
    @IBAction func unwind(_ seg: UIStoryboardSegue) {
        
        userNameTextField.text = nil
        passwordTextField.text = nil
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(with: "User Name", and: username)
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(with: "Password", and: password)
    }
    
    @IBAction func logInButton() {
        if userNameTextField.text != username || passwordTextField.text != password {
            showAlert(with: "Error!", and: "Wrong Log In")
            passwordTextField.text = nil
        }
    }
    
    // MARK: - Public Methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        }
        if textField == passwordTextField {
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

