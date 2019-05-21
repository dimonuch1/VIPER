//
//  viper.Interactor.swift
//  viper
//
//  Created by kira on 5/21/19.
//  Copyright (c) 2019 Dmitry. All rights reserved.
//

import Foundation

protocol viperInteracting: class {

    func doSomething()
}

protocol viperInteractorOutput: class {

    func handleSomethingFromInteractor()
}

extension viper {

    final class Interactor {

        weak var output: viperInteractorOutput!
    }
}

extension viper.Interactor: viperInteracting {

    // MARK: - Business logic

    func doSomething() {
        // NOTE: Do some work

        output.handleSomethingFromInteractor()
    }
}
