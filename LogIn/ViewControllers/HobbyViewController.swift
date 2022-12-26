//
//  HobbyViewController.swift
//  LogIn
//
//  Created by Aleksey on 20.12.2022.
//

import UIKit

final class HobbyViewController: UIViewController {
    
    // MARK: - IBOutlet


    @IBOutlet var firstHobbyTextFeeld: UILabel!
    @IBOutlet var secondHobbyTextFeeld: UILabel!
    @IBOutlet var thirdHobbyTextFeeld: UILabel!
    
    @IBOutlet var firstHobbyImage: UIImageView!
    @IBOutlet var secondHobbyImage: UIImageView!
    @IBOutlet var thirdHobbyImage: UIImageView!
    
    // MARK: - Public Properties
    
    var hobbys = [Hobby(type: "", image: "")]
    
    // MARK: - override WelcomeViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupImage()
        setupTextFeeld()
    }
}

// MARK: - Extenion

private extension HobbyViewController {
    func setupImage() {
        
        firstHobbyImage.image = UIImage(named: hobbys[0].image)
        secondHobbyImage.image = UIImage(named: hobbys[1].image)
        thirdHobbyImage.image = UIImage(named: hobbys[2].image)
        
        firstHobbyImage.layer.cornerRadius = 15
        secondHobbyImage.layer.cornerRadius = 15
        thirdHobbyImage.layer.cornerRadius = 15
    }
    
    func setupTextFeeld() {
        
        firstHobbyTextFeeld.text = hobbys[0].type
        secondHobbyTextFeeld.text = hobbys[1].type
        thirdHobbyTextFeeld.text = hobbys[2].type
    }
}
