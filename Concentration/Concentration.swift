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
    
  }
  
  init(numberOfPairsOfCards: Int) {
    for identifier in 0..<numberOfPairsOfCards {
      let card = Card(identifier: identifier)
      cards.append(card)
      cards.append(card)
    }
  }
  
}
