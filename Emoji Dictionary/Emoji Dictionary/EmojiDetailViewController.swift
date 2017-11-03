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
        case "😊":
            emojiDefinition.text = "Aw, shucks kinda feeling"
        case "🔥":
            emojiDefinition.text = "Things are heatin' up!"
        case "👍🏿":
            emojiDefinition.text = "Good job, dude!"
        case "🇺🇸":
            emojiDefinition.text = "U.S.A."
        default:
            emojiDefinition.text = "Dunno what this is, you should define it!"
        }
    }
}
