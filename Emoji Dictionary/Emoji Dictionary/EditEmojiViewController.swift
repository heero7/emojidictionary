//
//  EditEmojiViewController.swift
//  Emoji Dictionary
//
//  Created by Kevin Mudiandambo on 11/2/17.
//  Copyright © 2017 Kevin Mudiandambo. All rights reserved.
//

import UIKit
import os.log

class EditEmojiViewController: UIViewController {
    
    //MARK: Textfields
    @IBOutlet weak var emojiTextfield: UITextField!
    @IBOutlet weak var descriptionTextfield: UITextField!
    @IBOutlet weak var categoryTextfield: UITextField!
    @IBOutlet weak var yearTextfield: UITextField!
    
    //MARK: Navigation Buttons
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    //MARK: Properties
    
    // Emoji is used to pass data in prepare(for:sender:)
    var newEmoji:Emoji?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        super.prepare(for: segue, sender: sender)
        
        // checking if save button works
        guard let button = sender as? UIBarButtonItem, button === saveButton else {
            os_log("The save button was not pressed.. cancelling", log: OSLog.default,
                   type: .debug)
            return
        }
        
        let emoji = emojiTextfield.text ?? ""
        let descr = descriptionTextfield.text ?? ""
        //let category = categoryTextfield.text ?? ""
        let year = yearTextfield.text ?? ""
        
        newEmoji = Emoji(emoji: emoji, description: descr, category: 0, dob: year)
    }
    
    //MARK: Actions
    
    @IBAction func unwindToEmojiDetailView(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as?
            EditEmojiViewController, let newEmoji = sourceViewController.newEmoji {
            
            //add an emoji
            //let newIndexPath = IndexPath(row: emoji)
        }
    }
}
