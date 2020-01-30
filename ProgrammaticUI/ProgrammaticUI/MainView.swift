//
//  MainView.swift
//  ProgrammaticUI
//
//  Created by Matthew Ramos on 1/28/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class MainView: UIView {

    public lazy var colorGameImage: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    public lazy var redButton: UIButton = {
        let button = UIButton()
        button.setTitle("Red", for: .normal)
        button.backgroundColor = .systemRed
        button.setTitleColor(.black, for: .normal)
        button.tag = 0
        return button
    }()
    
    public lazy var blueButton: UIButton = {
        let button = UIButton()
        button.setTitle("Blue", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.black, for: .normal)
        button.tag = 1
        return button
    }()
    
    public lazy var greenButton: UIButton = {
        let button = UIButton()
        button.setTitle("Green", for: .normal)
        button.backgroundColor = .systemGreen
        button.setTitleColor(.black, for: .normal)
        button.tag = 2
        return button
    }()
    
    public lazy var resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("Reset", for: .normal)
        button.backgroundColor = .systemGray
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    public lazy var resultLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        return label
    }()
    
    public lazy var scoreLabel: UILabel = {
        let label = UILabel()
        label.text = "neat"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupImageViewConstraints()
        setupButtons()
        setupLabels()
    }
    
    private func setupImageViewConstraints() {
        addSubview(colorGameImage)
        colorGameImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            colorGameImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
            colorGameImage.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 0),
            colorGameImage.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: 0),
            colorGameImage.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.40)
            
        ])
    }
    
    private func setupButtons() {
        addSubview(blueButton)
        addSubview(redButton)
        addSubview(greenButton)
        addSubview(resetButton)
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        redButton.translatesAutoresizingMaskIntoConstraints = false
        greenButton.translatesAutoresizingMaskIntoConstraints = false
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            blueButton.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            blueButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            
            redButton.centerYAnchor.constraint(equalTo: blueButton.centerYAnchor),
            redButton.trailingAnchor.constraint(equalTo: blueButton.leadingAnchor, constant: -50),
            
            greenButton.centerYAnchor.constraint(equalTo: blueButton.centerYAnchor),
            greenButton.leadingAnchor.constraint(equalTo: blueButton.trailingAnchor, constant: 50),
            
            resetButton.centerXAnchor.constraint(equalTo: blueButton.centerXAnchor),
            resetButton.topAnchor.constraint(equalTo: blueButton.bottomAnchor, constant: 50)
        ])
    }
    
    private func setupLabels() {
        addSubview(resultLabel)
        addSubview(scoreLabel)
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            resultLabel.topAnchor.constraint(equalTo: resetButton.bottomAnchor, constant: 70),
            resultLabel.centerXAnchor.constraint(equalTo: blueButton.centerXAnchor),
            
            scoreLabel.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 70),
            scoreLabel.centerXAnchor.constraint(equalTo: resultLabel.centerXAnchor)
        ])
    }
 

}
