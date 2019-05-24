//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Jolyon Rudolph on 23/05/2019.
//  Copyright © 2019 Jolyon Rudolph. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTable: UITableView!
    
    var emojiArray : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    emojiTable.dataSource = self
    emojiTable.delegate = self
    emojiArray = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojiArray[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        let emojiSelected = emojiArray[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emojiSelected)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }


    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.definition = "This is a cool guy."
        emoji1.category = "Smiley"
        emoji1.birthYear = 2005
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🤷🏻‍♂️"
        emoji2.definition = "This guy doesn't care."
        emoji2.category = "People"
        emoji2.birthYear = 2012
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🙏🏻"
        emoji3.definition = "PRAY"
        emoji3.category = "Hands"
        emoji3.birthYear = 2010
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😈"
        emoji4.definition = "He is up to no good..."
        emoji4.category = "Smiley"
        emoji4.birthYear = 20011
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🙈"
        emoji5.definition = "SCARED MONKEY"
        emoji5.category = "Animals"
        emoji5.birthYear = 20013
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐥"
        emoji6.definition = "BABY CHIMKEN"
        emoji6.category = "Animals"
        emoji6.birthYear = 20013
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "❤️"
        emoji7.definition = "LOVE"
        emoji7.category = "Hearts"
        emoji7.birthYear = 2005
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "😡"
        emoji8.definition = "Wow, he looks angry."
        emoji8.category = "Smiley"
        emoji8.birthYear = 2009
        
        let emoji9 = Emoji()
        emoji9.stringEmoji = "😭"
        emoji9.definition = "Oh no, they're crying. :("
        emoji9.category = "Smiley"
        emoji9.birthYear = 2008
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8, emoji9]
    }
}

