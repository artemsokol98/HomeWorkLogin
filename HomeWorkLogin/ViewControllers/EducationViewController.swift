//
//  EducationViewController.swift
//  HomeWorkLogin
//
//  Created by Артем Соколовский on 04.04.2021.
//

import UIKit

class EducationViewController: UIViewController {
    
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var universityLabel: UILabel!
    @IBOutlet weak var departmentLabel: UILabel!
    @IBOutlet weak var directionLabel: UILabel!
    
    var school: String!
    var university: String!
    var department: String!
    var direction: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        schoolLabel.text = school
        universityLabel.text = university
        departmentLabel.text = department
        directionLabel.text = direction
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let additionalInfoVC = segue.destination as? AdditionalInfoViewController else {
            return
        }
        additionalInfoVC.skills = GeneralInfo.getGeneralInfo().skills
        additionalInfoVC.hobbies = GeneralInfo.getGeneralInfo().hobbies
    }

}
