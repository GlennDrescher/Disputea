//
//  LaunchCoordinator.swift
//  Disputea
//
//  Created by Glenn Drescher on 09/07/2020.
//  Copyright © 2020 Glenn Drescher. All rights reserved.
//

import Foundation
import UIKit

class LaunchCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func login() {
        let vc = Login.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func ChatroomList() {
        let vc = ChatroomsList.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
