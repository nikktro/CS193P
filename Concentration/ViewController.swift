//
//  ViewController.swift
//  Concentration
//
//  Created by Nikolay.Trofimov on 11/09/2019.
//  Copyright © 2019 Nikolay.Trofimov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBAction func touchCard(_ sender: UIButton) {
    flipCard(with: "👻", on: sender)
  }
  
  
  func flipCard(with emoji: String, on button: UIButton) {
    if button.currentTitle == emoji {
      button.setTitle("", for: .normal)
      button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
    } else {
      button.setTitle(emoji, for: .normal)
      button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
  }


}

