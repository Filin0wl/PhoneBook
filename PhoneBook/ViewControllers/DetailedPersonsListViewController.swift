//
//  DetailedPersonsListViewController.swift
//  PhoneBook
//
//  Created by Anastasia Perminova on 29.07.2022.
//

import UIKit

class DetailedPersonsListViewController: UIViewController {
    
    //MARK: - Properties
    private let personsArray = DataManager.getDetailPersonData()
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
}

//MARK: - Extension
extension DetailedPersonsListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsArray[section].phoneNumberEmail.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        personsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        let person = personsArray[indexPath.section].phoneNumberEmail[indexPath.row]
        cell.textLabel?.text = person
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personsArray[section].name + " " + personsArray[section].surname
    }
    
   
}