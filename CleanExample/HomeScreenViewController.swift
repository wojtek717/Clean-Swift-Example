//
//  HomeScreenViewController.swift
//  CleanExample
//
//  Created by Wojciech Konury on 11/06/2020.
//  Copyright (c) 2020 Wojciech Konury. All rights reserved.
//

import UIKit

protocol HomeScreenViewControllerLogic: AnyObject {
    func successPresentName(name: String)
}

final class HomeScreenViewController: UIViewController {
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var textField: UITextField!
    
    @IBAction private func sendButton(_ sender: UIButton) {
        interactor?.getName(name: textField.text ?? "Give us ur name")
        print(textField.text)
    }
    // MARK: - Public Properties
    var interactor: HomeScreenInteractorLogic?
    var router: HomeScreenRouterType?
}

extension HomeScreenViewController: HomeScreenViewControllerLogic {
    func successPresentName(name: String) {
        label.text = name
    }
    
    
}
