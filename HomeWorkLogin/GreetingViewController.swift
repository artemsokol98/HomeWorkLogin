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
    
    // MARK: - Public Properties
    var userName: String!
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = userName
    }
    
    // MARK: - IB Actions
    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}
