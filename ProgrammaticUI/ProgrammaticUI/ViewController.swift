//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Matthew Ramos on 1/28/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let mainView = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
    }
    
    override func loadView() {
        view = mainView
    }


}

