//
//  DefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Jolyon Rudolph on 23/05/2019.
//  Copyright © 2019 Jolyon Rudolph. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var emojiBig: UILabel!
    
    @IBOutlet weak var emojiDefinition: UILabel!
    
    var emoji = "No Emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    
        emojiBig.text = emoji
        
        if emoji == "😎" {
            emojiDefinition.text = "This is a cool guy."
        } else if emoji == "🤷🏻‍♂️" {
            emojiDefinition.text = "This guy doesn't care."
        } else if emoji == "😭" {
            emojiDefinition.text = "Wow he seems sad."
        } else if emoji == "😬" {
            emojiDefinition.text = "Ehhhhhh...?!?!?!"
        } else if emoji == "🙏🏻" {
            emojiDefinition.text = "PRAY"
        } else if emoji == "😈" {
            emojiDefinition.text = "Pretty sure he is up to no good."
        } else if emoji == "🙈" {
            emojiDefinition.text = "Scared monkey!"
        } else if emoji == "🙄" {
            emojiDefinition.text = "Please..."
        } else if emoji == "😡" {
            emojiDefinition.text = "What an angry dude."
        } else if emoji == "🐥" {
            emojiDefinition.text = "MUST. LOVE."
        } else if emoji == "❤️" {
            emojiDefinition.text = "ILU"
        } else {
            emojiDefinition.text = "Not sure about this one."
        }
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
