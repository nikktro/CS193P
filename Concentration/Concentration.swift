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
  
  var indexOfOneAndOnlyFaceUpCard: Int?
  
  func chooseCard(at index: Int) {
    if !cards[index].isMatched {
      if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
        // check if cards match
        if cards[matchIndex].identifier == cards[index].identifier {
          cards[matchIndex].isMatched = true
          cards[index].isMatched = true
        }
        cards[index].isFaceUp = true
        indexOfOneAndOnlyFaceUpCard = nil
        
      } else {
        // either no cards of 2 cards are face up
        for flipDownIndex in cards.indices {
          cards[flipDownIndex].isFaceUp = false
        }
        cards[index].isFaceUp = true
        indexOfOneAndOnlyFaceUpCard = index
      }
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
