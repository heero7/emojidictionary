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
        //guard let button = sender as?
    }
    

}
