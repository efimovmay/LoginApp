//
//  AboutViewController.swift
//  LogIn
//
//  Created by Aleksey on 20.12.2022.
//

import UIKit

final class AboutViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet var portraitImage: UIImageView!
    @IBOutlet var hiTextField: UILabel!
    @IBOutlet var aboutTextField: UILabel!
    
    // MARK: - Public Properties
    
    var user = User(name: "",
                      password: "",
                      persons: Person(about: "", image: ""),
                      hobbys: [])
    
    override func viewDidLoad() {
        super.viewDidLoad()

        hiTextField.text = user.persons.about

        portraitImage.image = UIImage(named: user.persons.image)
        portraitImage.layer.cornerRadius = 15
        
    }
    
    // MARK: - Override AboutViewController
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let hobbyVC = segue.destination as? HobbyViewController else { return }
        hobbyVC.hobbys = user.hobbys
    }

}
