//
//  HomeScreenConfigurator.swift
//  CleanExample
//
//  Created by Wojciech Konury on 11/06/2020.
//  Copyright © 2020 Wojciech Konury. All rights reserved.
//

import UIKit

public protocol HomeScreenConfiguratorProtocol {
    static func configureHomeScreenModule() -> UIViewController
}

public enum HomeScreenConfigurator: HomeScreenConfiguratorProtocol {
    public static func configureHomeScreenModule() -> UIViewController {
        let viewController: HomeScreenViewController = HomeScreenViewController()

        let presenter = HomeScreenPresenter(viewController: viewController)
        let interactor = HomeScreenInteractor(presenter: presenter)
        let router = HomeScreenRouter(viewController: viewController, dataStore: interactor)

        viewController.interactor = interactor
        viewController.router = router

        return viewController
    }
}
