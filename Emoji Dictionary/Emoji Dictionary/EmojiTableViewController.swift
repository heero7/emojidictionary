//
//  EmojiTableViewController.swift
//  Emoji Dictionary
/*
    This class Extends the UITableViewController class
    Used to controll the screen which stores all of the
    emojis
 */
//  Created by Kevin Mudiandambo on 10/24/17.
//  Copyright © 2017 Kevin Mudiandambo. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis = ["😀","😊","🔥","👍🏿","🇺🇸"]
    
    /*
     Runs this code when this ViewController is
     loaded.
     */
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // determines maximum number of rows for tableview
        // can handle ridiculous amount of numbers
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //TODO: should we use a constant for this?
        return emojis.count
    }
    
    /*
     Determines the properties of each
     cell. What they will contain, text, photo, etc.
     */
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //withIdentifier needs to look for a type of cell with name passed in
            // go into this.TableViewController and look at attributes inspector
            // look for the TableViewCell and give it a name in the identifier textField
        // Note: this will cause a Sigbrt error if no name is assigned
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        cell.textLabel?.text = "Hello World"
        
        return cell
    }
}
