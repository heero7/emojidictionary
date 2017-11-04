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
    
    var category: String
    var birthYear: String
    
    //MARK: Initialization
    
    init?(emoji: String, description: String, category: String, dob: String) {
        if emoji.isEmpty || description.isEmpty || category.isEmpty || dob.isEmpty{
            return nil
        }
        self.emoji = emoji
        self.description = description
        self.category = category
        self.birthYear = dob
    }
    
    init() {
        self.emoji = ""
        self.description = ""
        self.category = ""
        self.birthYear = ""
    }
}
