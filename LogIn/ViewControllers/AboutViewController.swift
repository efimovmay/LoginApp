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
    
    var hiText = ""
    var portrait = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        hiTextField.text = hiText

        portraitImage.image = UIImage(named: portrait)
        portraitImage.layer.cornerRadius = 15
        
    }
    

}
