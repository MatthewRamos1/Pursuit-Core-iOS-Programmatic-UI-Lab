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
    
    var randomRed: CGFloat = 0.0
    var randomBlue: CGFloat = 0.0
    var randomGreen: CGFloat = 0.0
    var randomAlpha: CGFloat = 0.0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        mainView.resetButton.addTarget(self, action: #selector(randomColor(_:)), for: .touchUpInside)
    }
    
    override func loadView() {
        view = mainView
    }

    @objc
    private func randomColor(_ sender: UIButton) {
        randomRed = CGFloat.random(in: 0...1)
        randomBlue = CGFloat.random(in: 0...1)
        randomGreen = CGFloat.random(in: 0...1)
        randomAlpha = CGFloat.random(in: 0...1)

        let myColor = UIColor(red: randomRed,
                              green: randomGreen,
                              blue: randomBlue,
                              alpha: randomAlpha)
        mainView.colorGameImage.backgroundColor = myColor
        
    }

}

