//
//  ViewController.swift
//  LogIn
//
//  Created by Aleksey on 07.12.2022.
//

import UIKit

final class LoginViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - IBOutlet
    
    @IBOutlet var userNameField: UITextField!
    @IBOutlet var passwordFeeld: UITextField!
    
    // MARK: - Private Properties
    
    private var user = User.getUser()
    
    // MARK: - override LoginViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameField.delegate = self
        passwordFeeld.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllersTabBar = tabBarVC.viewControllers else { return }
        
        viewControllersTabBar.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = user.name
                
            } else if let navigationVC = viewController as? UINavigationController {
                guard let aboutVC = navigationVC.topViewController as? AboutViewController else { return }
                aboutVC.user = user
            }
        }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    // MARK: - IBAction
    
    @IBAction func unwind(for seque: UIStoryboardSegue) {
        userNameField.text = ""
        passwordFeeld.text = ""
    }
    
    @IBAction func loginButton() {
        if userNameField.text == user.name && passwordFeeld.text == user.password {
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        } else {
            showAlertController(title: "Invalid login or password",
                                massege: "Please, enter correct login and password")
            passwordFeeld.text = ""
        }
    }

    @IBAction func getUserName() {
        showAlertController(title: "Oops!", massege: "Your name is \(user.name)")
        userNameField.text = ""
    }
    
    @IBAction func getPassword() {
        showAlertController(title: "Oops!", massege: "Your password is \(user.password)")
        passwordFeeld.text = ""
    }
    
    // MARK: - Public Methods
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameField {
            passwordFeeld.becomeFirstResponder()
        } else if textField == passwordFeeld {
            loginButton()
        }
        return true
    }
    
    // MARK: - Private Methods
    
    private func showAlertController(title: String, massege: String) {
        let alert = UIAlertController(title: title, message: massege, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okButton)
        present(alert, animated: true)
    }
}

