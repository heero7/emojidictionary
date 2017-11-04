//
//  EmojiTableViewController.swift
//  Emoji Dictionary
/*
    This class Extends the UITableViewController class
    Used to controll the screen which stores all of the
    emojis
 
    Embedded In Navigation controller for navigation
 */
//  Created by Kevin Mudiandambo on 10/24/17.
//  Copyright © 2017 Kevin Mudiandambo. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis = ["😀","😊","🔥","👍🏿","🇺🇸"]     // emojis are technically text, need dbl quotes!
    
    var emoji : [Emoji] = []                    // create a blank array of Emoji class
    
    
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
        
        cell.textLabel?.text = emojis[indexPath.row]    //the label for the cell will be the emoji
                                                        //it will appear in the very left of the cell
        return cell
    }
    
    /*
     This function handles touches on each cell. When pressed, the app navigates
     to the screen that shows the emoji along with the text for it. When clicked,
     it will pass the emoji that is selected in the array
     */
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("Tapped!")
        let emoji = emojis[indexPath.row] //take the selected emoji and put it into the constant and place as sender
        performSegue(withIdentifier: "ourSegue", sender: emoji)
    }
    
    /*
     Prepares the next segue with necessary data. In this case it will be the
     EmojiDetailViewController, we want to pass data to it.
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // get access to next ViewController
        let emojiDetailViewController = segue.destination as! EmojiDetailViewController
        emojiDetailViewController.emoji = sender as! String  // set the emoji
    }
    
    /*
     This returns an array of Emoji objects. Refer to the Emoji class to know the contents
     of the Emoji class.
     */
    func createEmojis() -> [Emoji] {
        let smiley = Emoji()//"😀","😊"
        smiley.emoji = "😀"
        
        let bashful = Emoji()
        return [smiley]
    }
}
