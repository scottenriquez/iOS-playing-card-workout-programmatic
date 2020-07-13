//
//  CardSelectionViewController.swift
//  PlayingCardWorkoutProgrammatic
//
//  Created by Scott Enriquez on 7/12/20.
//  Copyright © 2020 Scott Enriquez. All rights reserved.
//

import UIKit

class CardSelectionViewController: UIViewController {

    let cardImageView = UIImageView()
    let stopButton = PlayingCardWorkoutButton(backgroundColor: .systemRed, title: "Stop")
    let resetButton = PlayingCardWorkoutButton(backgroundColor: .systemGreen, title: "Reset")
    let rulesButton = PlayingCardWorkoutButton(backgroundColor: .systemBlue, title: "Rules")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    func configureUI() {
        configureCardImageView()
        configureStopButton()
    }
    
    func configureCardImageView() {
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "AS")
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)
        ])
    }
    
    func configureStopButton() {
        view.addSubview(stopButton)
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 250),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30)
        ])
    }

}
