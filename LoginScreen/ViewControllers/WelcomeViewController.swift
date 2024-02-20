//
//  UserViewController.swift
//  LoginScreen
//
//  Created by Macbook on 17.02.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        welcomeLabel.text = "Welcome, my name is \(user.person.fullName)."
        
//        print("User ID: ", user.id)
    }
}

