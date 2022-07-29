//
//  DetailInformationViewController.swift
//  PhoneBook
//
//  Created by Anastasia Perminova on 29.07.2022.
//

import UIKit

class DetailInformationViewController: UIViewController {
    
    //MARK: - Properties
    var phoneNumber = ""
    var email = ""
    var titlePage = ""
    
    //MARK: - Outlets
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = titlePage
        phoneNumberLabel.text = "Phone: " + phoneNumber
        emailLabel.text = "Email: " + email
    }


    

}
