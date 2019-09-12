//
//  Concentration.swift
//  Concentration
//
//  Created by Nikolay.Trofimov on 12/09/2019.
//  Copyright © 2019 Nikolay.Trofimov. All rights reserved.
//

import Foundation

class Concentration {
  
  var cards = [Card]()
  
  func chooseCard(at index: Int) {
    if cards[index].isFaceUp {
      cards[index].isFaceUp = false
    } else {
      cards[index].isFaceUp = true
    }
  }
  
  init(numberOfPairsOfCards: Int) {
    for _ in 0..<numberOfPairsOfCards {
      let card = Card()
      cards.append(card)
      cards.append(card)
    }
    // TODO: Shuffle the cards
  }
  
}
