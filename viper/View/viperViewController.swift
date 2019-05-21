//
//  viperViewController.swift
//  viper
//
//  Created by kira on 5/21/19.
//  Copyright (c) 2019 Dmitry. All rights reserved.
//

import UIKit

final class viperViewController: UIViewController {

    var presenter: viperPresenting!

    // MARK: - Object lifecycle

    override func awakeFromNib() {
        super.awakeFromNib()
        viper.Module().configure(viewController: self)
    }

    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // TODO: Ask the Presenter to do some work
        presenter.presentSomething()
    }
}

// MARK: - View logic

extension viperViewController: viperView {

    func displaySomething(viewModel: viper.Entity.ViewModel) {

        // TODO: Display the result from the Presenter

        // nameTextField.text = viewModel.name
    }
}
