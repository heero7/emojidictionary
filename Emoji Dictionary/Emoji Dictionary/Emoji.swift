//
//  Emoji.swift
//  Emoji Dictionary
//
//  Created by Kevin Mudiandambo on 11/2/17.
//  Copyright © 2017 Kevin Mudiandambo. All rights reserved.
//

import UIKit

class Emoji {
    
    //MARK: Properties
    
    var emoji: String
    var description: String
    
    //MARK: Initialization
    
    init?(emoji: String, description: String) {
        if emoji.isEmpty || description.isEmpty {
            return nil
        }
        self.emoji = emoji
        self.description = description
    }
    
    init(emoji: String) {
        if emoji.isEmpty {
            self.emoji = "😅"
        } else {
            self.emoji = emoji
        }
        self.description = ""
    }
}
