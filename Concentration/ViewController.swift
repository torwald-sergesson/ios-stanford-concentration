//
//  ViewController.swift
//  Concentration
//
//  Created by Vladimir Kasatkin on 19/10/2018.
//  Copyright © 2018 Vladimir Kasatkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!

    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = [
        "☪︎", "♱",
        "☘︎", "☯︎",
        "♱", "☪︎",
        "☘︎", "☯︎",
    ]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNum = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNum], on: sender)
        } else {
            print("Card not found")
        }
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if (button.currentTitle == emoji) {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = UIColor.orange
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = UIColor.white
        }
    }
    
}
