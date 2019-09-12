//
//  ViewController.swift
//  Concentration
//
//  Created by Nikolay.Trofimov on 11/09/2019.
//  Copyright © 2019 Nikolay.Trofimov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  lazy var game = Concentration(numberOfPairsOfCards: (cardButtons.count + 1) / 2 )
  
  var flipCount = 0 {
    didSet {
      flipCountLabel.text = "Flips: \(flipCount)"
    }
  }

  @IBOutlet weak var flipCountLabel: UILabel!
  
  @IBOutlet var cardButtons: [UIButton]!
  
  @IBAction func touchCard(_ sender: UIButton) {
    flipCount += 1
    if let cardNumber = cardButtons.firstIndex(of: sender) {
      game.chooseCard(at: cardNumber)
      updateViewFromModel()
    } else {
      print("Card is not in array CardButtons")
    }
  }
  
  @IBAction func newGameButton(_ sender: UIButton) {
    flipCount = 0
    emojiChoices = ["👻","🎃","😈","🍂","🍬","🍭","😱","🧙‍♀️","🧟‍♂️"]
    game = Concentration(numberOfPairsOfCards: (cardButtons.count + 1) / 2 )
    updateViewFromModel()
  }
  
  func updateViewFromModel() {
    for index in 0..<cardButtons.count {
      let button = cardButtons[index]
      let card = game.cards[index]
      if card.isFaceUp {
        button.setTitle(emoji(for: card), for: .normal)
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
      } else {
        button.setTitle("", for: .normal)
        button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0) : #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
      }
    }
  }
  
  var emojiChoices = ["👻","🎃","😈","🍂","🍬","🍭","😱","🧙‍♀️","🧟‍♂️"]
  var emoji = [Int:String]()
  
  func emoji(for card: Card) -> String {
    if emoji[card.identifier] == nil, emojiChoices.count > 0 {
      let randomIndex = Int.random(in: 0..<emojiChoices.count)
      emoji[card.identifier] = emojiChoices.remove(at: randomIndex)
    }
    return emoji[card.identifier] ?? "?"
  }

}
