//
//  HomeScreenInteractor.swift
//  CleanExample
//
//  Created by Wojciech Konury on 11/06/2020.
//  Copyright (c) 2020 Wojciech Konury. All rights reserved.
//

import UIKit

protocol HomeScreenInteractorLogic {
    func getName(name: String)
}

protocol HomeScreenDataStore {}

final class HomeScreenInteractor: HomeScreenDataStore {
    // MARK: - Public Properties
    var presenter: HomeScreenPresenterLogic

    // MARK: - Initializers
    init(presenter: HomeScreenPresenterLogic) {
      self.presenter = presenter
    }
}

extension HomeScreenInteractor: HomeScreenInteractorLogic {
    func getName(name: String) {
        presenter.presentName(name: name)
        print("Interactor!")
    }
}
