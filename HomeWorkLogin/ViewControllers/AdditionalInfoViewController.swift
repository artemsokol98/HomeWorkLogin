//
//  AdditionalInfoViewController.swift
//  HomeWorkLogin
//
//  Created by Артем Соколовский on 05.04.2021.
//

import UIKit

class AdditionalInfoViewController: UIViewController {

    
    @IBOutlet weak var skillsLabel: UILabel!
    @IBOutlet weak var hobbiesLabel: UILabel!
    
    var person: GeneralInfo!
    
    func parseArray(list: [String]!) -> String {
        var newString = ""
        for item in list {
            newString.append(item)
            newString.append(" ")
        }
        return newString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        skillsLabel.text = parseArray(list: person.skills)
        hobbiesLabel.text = parseArray(list: person.hobbies)
    }
}
