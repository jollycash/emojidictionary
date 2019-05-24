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
    @IBOutlet weak var emojiCategory: UILabel!
    @IBOutlet weak var emojiYear: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    
        emojiBig.text = emoji.stringEmoji
        emojiDefinition.text = emoji.definition
        emojiYear.text = "Created in \(emoji.birthYear)"
        emojiCategory.text = emoji.category
        
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
