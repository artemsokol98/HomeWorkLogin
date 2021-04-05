//
//  Data.swift
//  HomeWorkLogin
//
//  Created by Артем Соколовский on 03.04.2021.
//

//struct Data {
//    let title: String
//    let textInfo: String
//    let images: [Image]
//    
//    static func getData() -> [Data] {
//        [
//            Data(title: <#T##String#>, textInfo: <#T##String#>, images: <#T##[Image]#>)
//        ]
//    }
//}

struct Login {
    let userName: String
    let password: String
    
    static func getLogin() -> Login {
        Login(userName: "user", password: "password")
    }
}

struct GeneralInfo {
    let name: String
    let surname: String
    let age: Int
    let location: Location
    let education: Education
    let hobbies: [String]
    let image: String
    let skills: [String]
    
    static func getGeneralInfo() -> GeneralInfo {
        GeneralInfo(
            name: "Artem",
            surname: "Sokolovskiy",
            age: 22,
            location:
                Location(
                    HomeTown: "Rostov-on-Don",
                    CurrentTown: "Rostov-on-Don"
                ),
            education: Education(
                school: "School №60",
                schoolGraduationYear: 2016,
                university: University(
                universityName: "Southern Federal University",
                departmentName: "Physics faculty",
                directionOfStudy: "Infocommunication technologies",
                bachelorGraduationYear: 2020,
                masterGraduationYear: 2022
                )
            ),
            hobbies: [
            "Swimming",
            "Hikking",
            "Programming"
            ],
            image: "Avatar",
            skills: [
            "Git",
            "JavaScript",
            "Swift"
            ])
    }
}

struct Education {
    let school: String
    let schoolGraduationYear: Int
    let university: University
}

struct University {
    let universityName: String
    let departmentName: String
    let directionOfStudy: String
    let bachelorGraduationYear: Int
    let masterGraduationYear: Int
}

struct Location {
    let HomeTown: String
    let CurrentTown: String
}
