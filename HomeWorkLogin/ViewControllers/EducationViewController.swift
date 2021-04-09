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
    
    var education: Education!
    var person: GeneralInfo!

    override func viewDidLoad() {
        super.viewDidLoad()
        schoolLabel.text = education.school
        universityLabel.text = education.university.universityName
        departmentLabel.text = education.university.departmentName
        directionLabel.text = education.university.directionOfStudy
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let additionalInfoVC = segue.destination as? AdditionalInfoViewController else {
            return
        }
        additionalInfoVC.person = person
    }

}
