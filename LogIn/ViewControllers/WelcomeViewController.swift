//
//  WelcomeViewController.swift
//  LogIn
//
//  Created by Aleksey on 07.12.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet var userNameTF: UILabel!
    
    // MARK: - Public Properties
    
    var userName = ""
    
    // MARK: - override WelcomeViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.text = "Welcome \(userName) 👋!"
    }
    
}
    



