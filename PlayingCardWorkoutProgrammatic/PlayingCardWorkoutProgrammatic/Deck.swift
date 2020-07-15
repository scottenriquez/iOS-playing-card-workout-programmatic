//
//  Deck.swift
//  PlayingCardWorkoutProgrammatic
//
//  Created by Scott Enriquez on 7/14/20.
//  Copyright © 2020 Scott Enriquez. All rights reserved.
//

import UIKit

struct Deck {
    static func getAllCardUIImages() -> [UIImage] {
        var allCards: [UIImage] = []
        let values = ["A", "J", "Q", "K", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
        let suits = ["S", "H", "D", "C"]
        for value in values {
            for suit in suits {
                allCards.append(UIImage(named: "\(value + suit)")!)
            }
        }
        return allCards
    }
}
