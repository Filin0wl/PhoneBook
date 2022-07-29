//
//  ViewController.swift
//  PhoneBook
//
//  Created by Anastasia Perminova on 27.07.2022.
//

import UIKit

class PersonsListViewController: UIViewController {
    
    //MARK: - Properties
    private let personsArray = Person.getData()
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()

    //MARK: - Override
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Persons List"
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        
        print("test")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }


}

//MARK: - Extension
extension PersonsListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let item = personsArray[indexPath.row]
        cell.textLabel?.text = item.name + " " + item.surname
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row) data \(personsArray[indexPath.row].name)")
        let vc = DetailInformationViewController()
        vc.email = personsArray[indexPath.row].email
        vc.phoneNumber = personsArray[indexPath.row].phoneNumber
        vc.titlePage = personsArray[indexPath.row].name + " " + personsArray[indexPath.row].surname
        tableView.deselectRow(at: indexPath, animated: true)
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
   
    

    
    
}

