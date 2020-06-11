//
//  HomeScreenPresenter.swift
//  CleanExample
//
//  Created by Wojciech Konury on 11/06/2020.
//  Copyright (c) 2020 Wojciech Konury. All rights reserved.
//

import UIKit

protocol HomeScreenPresenterLogic {
    func presentName(name: String)
}

final class HomeScreenPresenter {
    // MARK: - Private Properties
    private weak var viewController: HomeScreenViewControllerLogic?

    // MARK: - Initializers
    init(viewController: HomeScreenViewControllerLogic?) {
        self.viewController = viewController
    }
}

extension HomeScreenPresenter: HomeScreenPresenterLogic {
    func presentName(name: String) {
        viewController?.successPresentName(name: name)
    }
}
