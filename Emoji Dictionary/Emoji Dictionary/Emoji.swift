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
    struct EmojiCategory {
        static let facialExpression = "Facial Expression"
        static let handGesture = "Hand Gesture"
        static let flag = "Flag"
        static let unknown = "Unknown Category"
    }
    
    var emoji: String
    var description: String
    
    var category: String
    var birthYear: String
    
    //MARK: Initialization
    
    init?(emoji: String, description: String, category: Int, dob: String) {
        if emoji.isEmpty || description.isEmpty || dob.isEmpty{
            return nil
        }
        self.emoji = emoji
        self.description = description
        self.category = ""
        self.birthYear = dob
        
        determineEmojiCategory(categoryNumber: category)
    }
    
    init() {
        self.emoji = ""
        self.description = ""
        self.category = ""
        self.birthYear = ""
    }
    
    /*
     Determines the category of the emoji via the
     EmojiCategory struct. Assigns the category accordingly
     */
    func determineEmojiCategory(categoryNumber: Int) {
        switch categoryNumber {
        case EmojiCategoryNumbers.FACIAL_EXPRESSION:
            category = EmojiCategory.facialExpression
        case EmojiCategoryNumbers.HAND_GESTURE:
            category = EmojiCategory.handGesture
        case EmojiCategoryNumbers.FLAG:
            category = EmojiCategory.flag
        default:
            category = EmojiCategory.unknown
        }
    }
}
