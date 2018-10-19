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

    @IBAction func touchCard(_ sender: UIButton) {
        flipCard(withEmoji: "☆", on: sender)
    }

    @IBAction func touchSecondCard(_ sender: UIButton) {
        flipCard(withEmoji: "☪︎", on: sender)
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if (button.currentTitle == emoji) {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = UIColor.orange
        } else {
            flipCount += 1
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = UIColor.white
        }
    }
    
}
