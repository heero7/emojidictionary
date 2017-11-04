//
//  EmojiDetailViewController.swift
//  Emoji Dictionary
//
//  Created by Kevin Mudiandambo on 10/26/17.
//  Copyright © 2017 Kevin Mudiandambo. All rights reserved.
//

import UIKit

class EmojiDetailViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = ""                              // holds the emoji that has been selected
    @IBOutlet weak var emojiDefinition: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    let category1 = "Facial Expression"
    let category2 = "Hand Gesture"
    let category3 = "Flag"
    let category4 = "Unknown"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = emoji
        setLabelsForDefaultEmojis(emote: emoji)
    }
    
    func setLabelsForDefaultEmojis(emote: String) {
        //["😀","😊","🔥","👍🏿","🇺🇸"]
        switch emote {
        case "😀":
            emojiDefinition.text = "Pretty happy guy"
            categoryLabel.text = category1
        case "😊":
            emojiDefinition.text = "Aw, shucks kinda feeling"
            categoryLabel.text = category1
        case "🔥":
            emojiDefinition.text = "Things are heatin' up!"
            categoryLabel.text = category4
        case "👍🏿":
            emojiDefinition.text = "Good job, dude!"
            categoryLabel.text = category2
        case "🇺🇸":
            emojiDefinition.text = "U.S.A."
            categoryLabel.text = category3
        default:
            emojiDefinition.text = "Dunno what this is, you should define it!"
            categoryLabel.text = category4
        }
    }
}
