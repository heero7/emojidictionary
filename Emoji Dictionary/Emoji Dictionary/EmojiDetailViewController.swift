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
    var emoji = ""      // holds the emoji that has been selected
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = emoji
    }
}
