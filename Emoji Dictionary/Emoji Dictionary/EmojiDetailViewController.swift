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
    var emoji = Emoji()                              // holds the emoji that has been selected
    @IBOutlet weak var emojiDefinition: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    //MARK: Navigation
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelForSelectedEmoji()
    }
    
    /*
     Gets the Emoji data then sets the approritate
     text data. This is called when the cell is selected
     for a given emoji.
     */
    func setLabelForSelectedEmoji() {
        emojiLabel.text = emoji.emoji
        emojiDefinition.text = emoji.description
        birthLabel.text = emoji.birthYear
        categoryLabel.text = emoji.category
    }
}
