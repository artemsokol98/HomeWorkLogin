//
//  GreetingViewController.swift
//  HomeWorkLogin
//
//  Created by Артем Соколовский on 31.03.2021.
//

import UIKit

class GreetingViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var generalInfoLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var avatarImageView: UIImageView!
    
    // MARK: - Public Properties
    var person: GeneralInfo!
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        let img: UIImage = UIImage(named: person.image) ?? UIImage()
        avatarImageView.image = img
        userNameLabel.text = person.name
        generalInfoLabel.text = "My name is \(person.name)"
        ageLabel.text = "I'm \(String(person.age)) years old"
        
    }

}
