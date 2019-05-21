//
//  viper.Presenter.swift
//  viper
//
//  Created by kira on 5/21/19.
//  Copyright (c) 2019 Dmitry. All rights reserved.
//

import UIKit

protocol viperPresenting: class {

    func presentSomething()
}

extension viper {

    final class Presenter {

        weak var view: viperView!
        var router: viperRouting!
        var interactor: viperInteracting!
    }
}

extension viper.Presenter: viperPresenting {

    // MARK: - Presentation logic

    func presentSomething() {

        // TODO: Present something in view or call some method on interactor

        // router.navigateToSomewhere()
    }
}

extension viper.Presenter: viperInteractorOutput {

    func handleSomethingFromInteractor() {

        // TODO: Format the response from the Interactor and pass the result back to the view

        // let viewModel = viper.Entity.ViewModel()
        // view.displaySomething(viewModel: viewModel)
    }
}
