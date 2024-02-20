//
//  UserBioViewController.swift
//  LoginScreen
//
//  Created by Macbook on 20.02.2024.
//

import UIKit

class UserBioViewController: UIViewController {
    
    @IBOutlet var userBioTextView: UITextView!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(user.person.fullName) Bio"
        userBioTextView.text = user.person.bio
        
        print("User ID: ", user.id)
      
    }
    
}
