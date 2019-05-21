//
//  viper.Router.swift
//  viper
//
//  Created by kira on 5/21/19.
//  Copyright (c) 2019 Dmitry. All rights reserved.
//

import UIKit

protocol viperRouting {

    func navigateToSomewhere()
}

extension viper {

    final class Router {
        weak var viewController: viperViewController!
    }
}

extension viper.Router: viperRouting {

    // MARK: - Navigation

    func navigateToSomewhere() {

        // NOTE: Teach the router how to navigate to another Module. Some examples follow:

        // 1. Trigger a storyboard segue
        // viewController.performSegueWithIdentifier("PresentOtherModule", sender: nil)

        // 2. Present another view controller programmatically
        // viewController.presentViewController(someWhereViewController, animated: true, completion: nil)

        // 3. Ask the navigation controller to push another view controller onto the stack
        // viewController.navigationController?.pushViewController(someWhereViewController, animated: true)

        // 4. Present a view controller from a different storyboard
        // let storyboard = UIStoryboard(name: "OtherThanMain", bundle: nil)
        // let someWhereViewController = storyboard.instantiateInitialViewController() as! SomeWhereViewController
        // viewController.navigationController?.pushViewController(someWhereViewController, animated: true)
    }
}
