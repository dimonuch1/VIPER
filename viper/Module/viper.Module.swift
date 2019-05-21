//
//  viper.Module.swift
//  viper
//
//  Created by kira on 5/21/19.
//  Copyright (c) 2019 Dmitry. All rights reserved.
//

import UIKit

struct viper {}

extension viper {

    struct Module {

        func configure(viewController: viperViewController) {

            let router = Router()
            router.viewController = viewController

            let presenter = Presenter()
            presenter.view = viewController
            presenter.router = router

            let interactor = Interactor()
            interactor.output = presenter

            presenter.interactor = interactor

            viewController.presenter = presenter
        }
    }
}
