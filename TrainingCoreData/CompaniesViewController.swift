//
//  CompaniesViewController.swift
//  TrainingCoreData
//
//  Created by Valeriy Fomin on 25/2/22.
//

import UIKit

class CompaniesViewController: UITableViewController {

    let companies = [
        Company(name: "Apple", founded: Date()),
        Company(name: "Google", founded: Date()),
        Company(name: "Facebook", founded: Date()),
        Company(name: "Amazon", founded: Date())
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        navigationItem.title = "Companies"

        tableView.backgroundColor = UIColor.darkBlue
        tableView.separatorColor = .white
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        tableView.tableFooterView = UIView()

        navigationItem.rightBarButtonItem = UIBarButtonItem(image:  UIImage(systemName: "plus.square")?.withTintColor(.white, renderingMode: .alwaysOriginal), style: .done, target: self, action: #selector(handleAddCompany))

        setupNavigationStyle()

    }

    //MARK: - Methods
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    func setupNavigationStyle() {
//        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.backgroundColor = UIColor.lightRed
        navigationController?.navigationBar.prefersLargeTitles = true

        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }

    @objc func handleAddCompany() {
        print("Adding company...")
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .lightBlue
        return view
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companies.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)

        cell.backgroundColor = UIColor.tealColor

        cell.textLabel?.text = companies[indexPath.row].name
        cell.textLabel?.textColor = .white
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 16)

        return cell


    }
}

