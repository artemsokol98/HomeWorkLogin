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
    var userName: String!
    var age: Int!
    var homeImage: String!
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        let img: UIImage = UIImage(named: homeImage) ?? UIImage()
        avatarImageView.image = img
        userNameLabel.text = userName
        generalInfoLabel.text = "My name is \(userName!)"
        ageLabel.text = "I'm \(String(age)) years old"
        
    }

}
