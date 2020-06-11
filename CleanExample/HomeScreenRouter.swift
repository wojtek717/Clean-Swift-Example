//
//  HomeScreenRouter.swift
//  CleanExample
//
//  Created by Wojciech Konury on 11/06/2020.
//  Copyright (c) 2020 Wojciech Konury. All rights reserved.
//

import UIKit

typealias HomeScreenRouterType = HomeScreenRouterProtocol & HomeScreenDataPassing

@objc protocol HomeScreenRouterProtocol {}

protocol HomeScreenDataPassing {
    var dataStore: HomeScreenDataStore { get }
}

final class HomeScreenRouter: HomeScreenDataPassing {
    // MARK: - Public Properties
    weak var viewController: HomeScreenViewController?
    var dataStore: HomeScreenDataStore

    // MARK: - Initializers
    init(viewController: HomeScreenViewController?, dataStore: HomeScreenDataStore) {
        self.viewController = viewController
        self.dataStore = dataStore
    }
}

extension HomeScreenRouter: HomeScreenRouterProtocol {}
