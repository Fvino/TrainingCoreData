//
//  ViewController.swift
//  TrainingCoreData
//
//  Created by Valeriy Fomin on 25/2/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        view.backgroundColor = .white
        print("Hola")
        navigationItem.title = "Companies"

        navigationItem.rightBarButtonItem = UIBarButtonItem(image:  UIImage(systemName: "plus.square")?.withTintColor(.white, renderingMode: .alwaysOriginal), style: .done, target: self, action: #selector(handleAddCompany))


        setupNavigationStyle()

    }

    //MARK: - Methods
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    func setupNavigationStyle() {

        navigationController?.navigationBar.isTranslucent = false
        let lightRed = UIColor(red: 247/255, green: 66/255 , blue: 82/255, alpha: 1)
        navigationController?.navigationBar.backgroundColor = lightRed
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }

    @objc func handleAddCompany() {
        print("Adding company...")
    }
}

