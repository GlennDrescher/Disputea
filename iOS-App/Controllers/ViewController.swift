//
//  ViewController.swift
//  Disputea
//
//  Created by Glenn Drescher on 09/07/2020.
//  Copyright © 2020 Glenn Drescher. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    weak var coordinator: LaunchCoordinator?
    
    
    @IBAction func Login(_ sender: Any) {
        coordinator?.login()
    }
    
    @IBAction func ChatroomList(_ sender: Any) {
        coordinator?.ChatroomList()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

