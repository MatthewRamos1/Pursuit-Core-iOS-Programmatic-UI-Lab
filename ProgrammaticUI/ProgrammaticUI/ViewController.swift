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
    
    private var randomRed: CGFloat = 0.0
    private var randomBlue: CGFloat = 0.0
    private var randomGreen: CGFloat = 0.0
    private var randomAlpha: CGFloat = 0.0
    private var highScore = 0
    private var currentScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        mainView.resetButton.addTarget(self, action: #selector(resetRandomColor(_:)), for: .touchUpInside)
        mainView.redButton.addTarget(self, action: #selector(colorGuessed(_:)), for: .touchUpInside)
        mainView.blueButton.addTarget(self, action: #selector(colorGuessed(_:)), for: .touchUpInside)
        mainView.greenButton.addTarget(self, action: #selector(colorGuessed(_:)), for: .touchUpInside)
        highScoreUpdate()
    }
    
    override func loadView() {
        view = mainView
    }
    
    private func highScoreUpdate() {
        if currentScore > highScore {
            highScore = currentScore
        }
        mainView.scoreLabel.text = "High Score: \(highScore)"
    }
    
    @objc
    private func resetRandomColor(_ sender: UIButton) {
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
    
    @objc
    private func colorGuessed(_ sender: UIButton) {
        let colorVals = [randomBlue, randomGreen, randomRed]
        let mostOfColor = colorVals.max()
        var colorTag = -1
        switch mostOfColor {
        case randomRed:
            colorTag = 0
        case randomBlue:
            colorTag = 1
        case randomGreen:
            colorTag = 2
        default:
            colorTag = 0
        }
        switch sender.tag {
        case colorTag:
            mainView.resultLabel.text = "Correct!"
            currentScore += 1
            highScoreUpdate()
            
        default:
            mainView.resultLabel.text = "Incorrect. Play again?"
            highScoreUpdate()
            currentScore = 0
        }
    }
    
}

