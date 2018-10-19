//
//  ViewController.swift
//  Concentration
//
//  Created by Vladimir Kasatkin on 19/10/2018.
//  Copyright © 2018 Vladimir Kasatkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func touchCard(_ sender: UIButton) {
        flipCard(withEmoji: "☆", on: sender)
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
