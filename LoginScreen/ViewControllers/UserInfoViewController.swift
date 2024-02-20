//
//  UserInfoViewController.swift
//  LoginScreen
//
//  Created by Macbook on 20.02.2024.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet var photoImage: UIImageView! {
        didSet {
            photoImage.layer.cornerRadius = photoImage.frame.height / 2
        }
    }
    

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    @IBOutlet var jobTitleLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImage.image = UIImage(named: user.person.photo)
        title = user.person.fullName
        nameLabel.text = user.person.name
        surnameLabel.text  = user.person.surname
        jobLabel.text = user.person.job.title
        departmentLabel.text = user.person.job.department.rawValue
        jobTitleLabel.text = user.person.job.jobTitile.rawValue
        
        print("User ID: ", user.id)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let userBioVC = segue.destination as? UserBioViewController
        userBioVC?.user = user
    }
    
}
