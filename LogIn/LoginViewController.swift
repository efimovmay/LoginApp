//
//  ViewController.swift
//  LogIn
//
//  Created by Aleksey on 07.12.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let userName = "user"
    private let password = "pass"
    
    // MARK: - IBOutlet
    
    @IBOutlet var userNameField: UITextField!
    @IBOutlet var passwordFeeld: UITextField!
    
    // MARK: - override LoginViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    // MARK: - IBAction
    
    
    @IBAction func loginButton() {
        if userNameField.text == userName && passwordFeeld.text == password {
            let welcomeVC = storyboard?.instantiateViewController(withIdentifier: "WelcomeVC")
            
            present(welcomeVC!, animated: true)
        } else {
            showAlertController(title: "Invalid login or password", massege: "Please, enter correct login and password")
            passwordFeeld.text = ""
        }
    }
    
    @IBAction func getUserName() {
        showAlertController(title: "Oops!", massege: "Your name is \(userName)")
    }
    
    @IBAction func getPassword() {
        showAlertController(title: "Oops!", massege: "Your password is \(password)")
    }
    
    // MARK: - setup view
    
 //   private extension LoginViewController {
        
  //  }
    
    // MARK: - setup views
    
    private func showAlertController(title: String, massege: String) {
        
        let alert = UIAlertController(title: title, message: massege, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okButton)
        present(alert, animated: true)
        
    }
}

