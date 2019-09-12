//
//  Card.swift
//  Concentration
//
//  Created by Nikolay.Trofimov on 12/09/2019.
//  Copyright © 2019 Nikolay.Trofimov. All rights reserved.
//

import Foundation

struct Card {
  
  var isFaceUp = false
  var isMatched = false
  var identifier: Int
  
  init(identifier: Int) {
    self.identifier = identifier
  }
  
}