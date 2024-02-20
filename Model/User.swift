//
//  User.swift
//  LoginScreen
//
//  Created by Macbook on 20.02.2024.
//

import Foundation

struct User {
    let id = UUID()
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "11",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let bio: String
    let job: Company
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Alan",
            surname: "Post",
            photo: "myPhoto",
            bio: "Просточек-Червячок",
            job: Company.getCompany()
        )
    }
}

struct Company {
    let title: String
    let jobTitile: JobTitle
    let department: Department
    
    static func getCompany() -> Company {
        Company(
            title: "Apple",
            jobTitile: .developer,
            department: .develope
        )
    }
}

enum JobTitle: String {
    case boss = "Boss"
    case developer  = "Developer"
}

enum Department: String {
    case marketing = "Marketing"
    case develope = "Develop"
}
